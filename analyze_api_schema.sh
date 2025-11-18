#!/bin/bash

# API Schema Analysis Script for poe.ninja
# Automatically analyzes all endpoints to document field types, nullable fields, and relationships

LEAGUE="Keepers"
OUTPUT_FILE="api_schema_analysis.md"

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "Starting comprehensive API schema analysis..."
echo "# poe.ninja API Schema Documentation" > $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "League: $LEAGUE" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Function to analyze endpoint schema
analyze_endpoint() {
    local overview_type=$1
    local endpoint_type=$2
    local base_url=""
    case "$overview_type" in
        "currencyoverview")
            base_url="https://poe.ninja/poe1/api/economy/stash/current/currency/overview"
            ;;
        "itemoverview")
            base_url="https://poe.ninja/poe1/api/economy/stash/current/item/overview"
            ;;
        *)
            base_url="https://poe.ninja/poe1/api/economy/stash/current/item/overview"
            ;;
    esac
    local url="${base_url}?league=${LEAGUE}&type=${endpoint_type}"
    
    echo -e "${BLUE}Analyzing: ${endpoint_type} (${overview_type})${NC}"
    
    # Get response
    response=$(curl -s -L "$url")
    
    # Check if response is valid
    if echo "$response" | jq empty 2>/dev/null; then
        # Check if lines array exists and has data
        lines_count=$(echo "$response" | jq '.lines | length' 2>/dev/null)
        
        if [[ "$lines_count" != "null" && "$lines_count" -gt 0 ]]; then
            echo -e "${GREEN}✓ Working endpoint with $lines_count items${NC}"
            
            # Extract first item for schema analysis
            first_item=$(echo "$response" | jq '.lines[0]' 2>/dev/null)
            
            # Document endpoint in markdown
            echo "## ${endpoint_type} (${overview_type})" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            echo "**Status:** ✅ Working" >> $OUTPUT_FILE
            echo "**Items Count:** $lines_count" >> $OUTPUT_FILE
            echo "**URL:** \`$url\`" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            
            # Analyze field structure
            echo "### Field Schema" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            echo "| Field Name | Data Type | Nullable | Description |" >> $OUTPUT_FILE
            echo "|------------|-----------|----------|-------------|" >> $OUTPUT_FILE
            
            # Get all field names and analyze them
            field_names=$(echo "$first_item" | jq -r 'keys[]' 2>/dev/null)
            
            while IFS= read -r field; do
                if [[ -n "$field" ]]; then
                    # Get field value and determine type
                    field_value=$(echo "$first_item" | jq ".$field" 2>/dev/null)
                    field_type=$(echo "$field_value" | jq -r 'type' 2>/dev/null)
                    
                    # Check if field can be null by sampling multiple items
                    nullable="No"
                    for i in {0..4}; do
                        sample_value=$(echo "$response" | jq ".lines[$i].$field" 2>/dev/null)
                        if [[ "$sample_value" == "null" ]]; then
                            nullable="Yes"
                            break
                        fi
                    done
                    
                    # Generate description based on field name and type
                    description=$(generate_field_description "$field" "$field_type" "$endpoint_type")
                    
                    echo "| \`$field\` | $field_type | $nullable | $description |" >> $OUTPUT_FILE
                fi
            done <<< "$field_names"
            
            echo "" >> $OUTPUT_FILE
            
            # Add sample response
            echo "### Sample Response" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            echo "\`\`\`json" >> $OUTPUT_FILE
            echo "$first_item" | jq '.' >> $OUTPUT_FILE
            echo "\`\`\`" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            
        elif [[ "$lines_count" == "0" ]]; then
            echo -e "${YELLOW}⚠ Empty endpoint (deprecated)${NC}"
            echo "## ${endpoint_type} (${overview_type})" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
            echo "**Status:** ❌ Deprecated/Empty" >> $OUTPUT_FILE
            echo "**Items Count:** 0" >> $OUTPUT_FILE
            echo "**URL:** \`$url\`" >> $OUTPUT_FILE
            echo "" >> $OUTPUT_FILE
        else
            echo -e "${RED}✗ Invalid response structure${NC}"
        fi
    else
        echo -e "${RED}✗ Failed to get valid JSON response${NC}"
    fi
    
    echo ""
}

# Function to generate field descriptions
generate_field_description() {
    local field_name=$1
    local field_type=$2
    local endpoint_type=$3
    
    case $field_name in
        "id") echo "Unique identifier for the item" ;;
        "name") echo "Display name of the item" ;;
        "icon") echo "URL to the item's icon image" ;;
        "levelRequired") echo "Minimum character level required to use the item" ;;
        "baseType") echo "Base item type name" ;;
        "links") echo "Number of linked sockets (for socketable items)" ;;
        "itemClass") echo "Numeric identifier for the item class category" ;;
        "itemType") echo "Descriptive item type category" ;;
        "chaosValue") echo "Current market value in Chaos Orbs" ;;
        "exaltedValue") echo "Current market value in Exalted Orbs" ;;
        "divineValue") echo "Current market value in Divine Orbs" ;;
        "count") echo "Number of items available in the market" ;;
        "detailsId") echo "Unique identifier for detailed item information" ;;
        "listingCount") echo "Number of active trade listings" ;;
        "sparkline") echo "Price trend data over time" ;;
        "lowConfidenceSparkline") echo "Price trend data with low confidence indicators" ;;
        "implicitModifiers") echo "Array of implicit item modifiers" ;;
        "explicitModifiers") echo "Array of explicit item modifiers" ;;
        "flavourText") echo "Lore text associated with the item" ;;
        "tradeInfo") echo "Additional trading information and metadata" ;;
        "currencyTypeName") echo "Name of the currency type" ;;
        "pay") echo "Exchange rate data for paying with this currency" ;;
        "receive") echo "Exchange rate data for receiving this currency" ;;
        "paySparkLine") echo "Price trend for pay transactions" ;;
        "receiveSparkLine") echo "Price trend for receive transactions" ;;
        "lowConfidencePaySparkLine") echo "Low confidence pay transaction trends" ;;
        "lowConfidenceReceiveSparkLine") echo "Low confidence receive transaction trends" ;;
        "chaosEquivalent") echo "Equivalent value in Chaos Orbs" ;;
        *) echo "Field specific to $endpoint_type endpoint" ;;
    esac
}

# Currency overview endpoints
echo "=== Analyzing currencyoverview endpoints ==="
analyze_endpoint "currencyoverview" "Currency"
analyze_endpoint "currencyoverview" "Fragment"

# Item overview endpoints
echo "=== Analyzing itemoverview endpoints ==="
analyze_endpoint "itemoverview" "Oil"
analyze_endpoint "itemoverview" "Incubator"
analyze_endpoint "itemoverview" "Scarab"
analyze_endpoint "itemoverview" "Fossil"
analyze_endpoint "itemoverview" "Resonator"
analyze_endpoint "itemoverview" "Essence"
analyze_endpoint "itemoverview" "DivinationCard"
analyze_endpoint "itemoverview" "SkillGem"
analyze_endpoint "itemoverview" "BaseType"
analyze_endpoint "itemoverview" "HelmetEnchant"
analyze_endpoint "itemoverview" "UniqueMap"
analyze_endpoint "itemoverview" "Map"
analyze_endpoint "itemoverview" "UniqueJewel"
analyze_endpoint "itemoverview" "UniqueFlask"
analyze_endpoint "itemoverview" "UniqueWeapon"
analyze_endpoint "itemoverview" "UniqueArmour"
analyze_endpoint "itemoverview" "UniqueAccessory"
analyze_endpoint "itemoverview" "Beast"
analyze_endpoint "itemoverview" "Prophecy"
analyze_endpoint "itemoverview" "Watchstone"
analyze_endpoint "itemoverview" "Vial"
analyze_endpoint "itemoverview" "DeliriumOrb"
analyze_endpoint "itemoverview" "Omen"
analyze_endpoint "itemoverview" "UniqueRelic"
analyze_endpoint "itemoverview" "ClusterJewel"
analyze_endpoint "itemoverview" "BlightedMap"
analyze_endpoint "itemoverview" "BlightRavagedMap"
analyze_endpoint "itemoverview" "Invitation"
analyze_endpoint "itemoverview" "Memory"
analyze_endpoint "itemoverview" "Coffin"
analyze_endpoint "itemoverview" "AllflameEmber"

# Add field relationships section
echo "# Field Relationships & Common Patterns" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "## Common Fields Across Endpoints" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "### Price Fields" >> $OUTPUT_FILE
echo "- \`chaosValue\`: Present in all item endpoints, represents current Chaos Orb value" >> $OUTPUT_FILE
echo "- \`exaltedValue\`: Present in high-value items, represents Exalted Orb value" >> $OUTPUT_FILE
echo "- \`divineValue\`: Present in high-value items, represents Divine Orb value" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "### Identification Fields" >> $OUTPUT_FILE
echo "- \`id\`: Unique numeric identifier across all item endpoints" >> $OUTPUT_FILE
echo "- \`name\`: Display name, present in all endpoints" >> $OUTPUT_FILE
echo "- \`detailsId\`: URL-friendly identifier for detailed views" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "### Market Data Fields" >> $OUTPUT_FILE
echo "- \`count\`: Available quantity in market" >> $OUTPUT_FILE
echo "- \`listingCount\`: Number of active trade listings" >> $OUTPUT_FILE
echo "- \`sparkline\`: Price trend data over time" >> $OUTPUT_FILE
echo "- \`lowConfidenceSparkline\`: Price trends with confidence indicators" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "### Item-Specific Fields" >> $OUTPUT_FILE
echo "- \`links\`: Socket links (weapons, armor) - **Missing in UniqueArmour/UniqueAccessory**" >> $OUTPUT_FILE
echo "- \`levelRequired\`: Character level requirement" >> $OUTPUT_FILE
echo "- \`itemClass\`/\`itemType\`: Item categorization" >> $OUTPUT_FILE
echo "- \`implicitModifiers\`/\`explicitModifiers\`: Item stat modifiers" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "### Currency-Specific Fields" >> $OUTPUT_FILE
echo "- \`pay\`/\`receive\`: Exchange rate objects with detailed trading data" >> $OUTPUT_FILE
echo "- \`chaosEquivalent\`: Standardized Chaos Orb value" >> $OUTPUT_FILE
echo "- \`paySparkLine\`/\`receiveSparkLine\`: Directional price trends" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo -e "${GREEN}Schema analysis complete! Results saved to: $OUTPUT_FILE${NC}"
echo "Total endpoints analyzed: 33"
echo "Documentation includes field types, nullability, descriptions, and relationships."
