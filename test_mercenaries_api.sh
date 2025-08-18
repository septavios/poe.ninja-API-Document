#!/bin/bash

# Script to test all poe.ninja API endpoints for Mercenaries league
# Usage: ./test_mercenaries_api.sh

LEAGUE="Mercenaries"
BASE_URL="https://poe.ninja/api/data"
FAILED_ENDPOINTS=()
SUCCESS_ENDPOINTS=()
FIELD_ISSUES=()

echo "Testing poe.ninja API endpoints for league: $LEAGUE"
echo "================================================"
echo ""

# Function to validate currency overview JSON structure
validate_currency_json() {
    local response=$1
    local data_type=$2
    
    # Check required top-level fields
    if ! echo "$response" | jq -e '.lines' > /dev/null 2>&1; then
        return 1
    fi
    
    # Check if lines array has items and validate first item structure
    local count=$(echo "$response" | jq '.lines | length')
    if [ "$count" -gt 0 ]; then
        # Validate required fields in currency items
        local required_fields=("currencyTypeName" "chaosEquivalent")
        for field in "${required_fields[@]}"; do
            if ! echo "$response" | jq -e ".lines[0] | has(\"$field\")" > /dev/null 2>&1; then
                FIELD_ISSUES+=("$data_type: Missing field '$field'")
                return 1
            fi
        done
    fi
    return 0
}

# Function to validate item overview JSON structure
validate_item_json() {
    local response=$1
    local data_type=$2
    
    # Check required top-level fields
    if ! echo "$response" | jq -e '.lines' > /dev/null 2>&1; then
        return 1
    fi
    
    # Check if lines array has items and validate first item structure
    local count=$(echo "$response" | jq '.lines | length')
    if [ "$count" -gt 0 ]; then
        # Validate common required fields in item overview
        local required_fields=("name" "chaosValue")
        for field in "${required_fields[@]}"; do
            if ! echo "$response" | jq -e ".lines[0] | has(\"$field\")" > /dev/null 2>&1; then
                FIELD_ISSUES+=("$data_type: Missing field '$field'")
                return 1
            fi
        done
        
        # Additional validation for specific item types
        case "$data_type" in
            "SkillGem")
                if ! echo "$response" | jq -e '.lines[0] | has("gemLevel")' > /dev/null 2>&1; then
                    FIELD_ISSUES+=("$data_type: Missing field 'gemLevel'")
                    return 1
                fi
                ;;
            "UniqueWeapon"|"UniqueArmour"|"UniqueAccessory")
                if ! echo "$response" | jq -e '.lines[0] | has("links")' > /dev/null 2>&1; then
                    FIELD_ISSUES+=("$data_type: Missing field 'links'")
                    return 1
                fi
                ;;
            "Map")
                if ! echo "$response" | jq -e '.lines[0] | has("mapTier")' > /dev/null 2>&1; then
                    FIELD_ISSUES+=("$data_type: Missing field 'mapTier'")
                    return 1
                fi
                ;;
        esac
    fi
    return 0
}

# Function to test an endpoint
test_endpoint() {
    local endpoint_type=$1
    local data_type=$2
    local url="${BASE_URL}/${endpoint_type}?league=${LEAGUE}&type=${data_type}"
    
    echo -n "Testing ${data_type} (${endpoint_type})... "
    
    # Make the API call and check if it returns valid JSON with data
    response=$(curl -s "$url")
    
    if [ $? -eq 0 ] && echo "$response" | jq -e '.lines | length' > /dev/null 2>&1; then
        count=$(echo "$response" | jq '.lines | length')
        
        # Validate JSON structure based on endpoint type
        if [ "$endpoint_type" = "currencyoverview" ]; then
            if validate_currency_json "$response" "$data_type"; then
                echo "✓ SUCCESS ($count items, JSON structure valid)"
                SUCCESS_ENDPOINTS+=("$data_type")
            else
                echo "⚠ PARTIAL ($count items, JSON structure issues)"
                FAILED_ENDPOINTS+=("$data_type")
            fi
        else
            if validate_item_json "$response" "$data_type"; then
                echo "✓ SUCCESS ($count items, JSON structure valid)"
                SUCCESS_ENDPOINTS+=("$data_type")
            else
                echo "⚠ PARTIAL ($count items, JSON structure issues)"
                FAILED_ENDPOINTS+=("$data_type")
            fi
        fi
    else
        echo "✗ FAILED (No response or invalid JSON)"
        FAILED_ENDPOINTS+=("$data_type")
    fi
}

# Test currencyoverview endpoints
echo "Testing currencyoverview endpoints:"
test_endpoint "currencyoverview" "Currency"
test_endpoint "currencyoverview" "Fragment"

echo ""
echo "Testing itemoverview endpoints:"
# Test itemoverview endpoints
test_endpoint "itemoverview" "Oil"
test_endpoint "itemoverview" "Incubator"
test_endpoint "itemoverview" "Scarab"
test_endpoint "itemoverview" "Fossil"
test_endpoint "itemoverview" "Resonator"
test_endpoint "itemoverview" "Essence"
test_endpoint "itemoverview" "DivinationCard"
test_endpoint "itemoverview" "SkillGem"
test_endpoint "itemoverview" "BaseType"
test_endpoint "itemoverview" "HelmetEnchant"
test_endpoint "itemoverview" "UniqueMap"
test_endpoint "itemoverview" "Map"
test_endpoint "itemoverview" "UniqueJewel"
test_endpoint "itemoverview" "UniqueFlask"
test_endpoint "itemoverview" "UniqueWeapon"
test_endpoint "itemoverview" "UniqueArmour"
test_endpoint "itemoverview" "UniqueAccessory"
test_endpoint "itemoverview" "Beast"
test_endpoint "itemoverview" "Prophecy"
test_endpoint "itemoverview" "Watchstone"

echo ""
echo "================================================"
echo "SUMMARY:"
echo "================================================"

if [ ${#SUCCESS_ENDPOINTS[@]} -gt 0 ]; then
    echo "✓ Working endpoints (${#SUCCESS_ENDPOINTS[@]}):"
    for endpoint in "${SUCCESS_ENDPOINTS[@]}"; do
        echo "  - $endpoint"
    done
fi

echo ""

if [ ${#FAILED_ENDPOINTS[@]} -gt 0 ]; then
    echo "✗ Failed/Problematic endpoints (${#FAILED_ENDPOINTS[@]}):"
    for endpoint in "${FAILED_ENDPOINTS[@]}"; do
        echo "  - $endpoint"
    done
fi

if [ ${#FIELD_ISSUES[@]} -gt 0 ]; then
    echo ""
    echo "⚠ JSON Structure Issues:"
    for issue in "${FIELD_ISSUES[@]}"; do
        echo "  - $issue"
    done
fi

if [ ${#FAILED_ENDPOINTS[@]} -gt 0 ] || [ ${#FIELD_ISSUES[@]} -gt 0 ]; then
    echo ""
    echo "CHANGELOG ENTRY NEEDED:"
    echo "========================"
    echo "## API Status Update - $(date '+%Y-%m-%d')"
    echo ""
    
    if [ ${#FAILED_ENDPOINTS[@]} -gt 0 ]; then
        echo "### Deprecated/Unavailable Endpoints for Mercenaries League:"
        for endpoint in "${FAILED_ENDPOINTS[@]}"; do
            echo "- \`$endpoint\` - No longer available or returning invalid data"
        done
        echo ""
    fi
    
    if [ ${#FIELD_ISSUES[@]} -gt 0 ]; then
        echo "### JSON Structure Changes:"
        for issue in "${FIELD_ISSUES[@]}"; do
            echo "- $issue"
        done
        echo ""
    fi
    
    echo "### Note:"
    echo "These changes may indicate API updates or modifications in the current league."
    echo "Please verify with poe.ninja documentation and update your code accordingly."
else
    echo "🎉 All endpoints are working correctly with intact JSON structure!"
    echo "No changelog update needed."
fi

echo ""
echo "Test completed at: $(date)"