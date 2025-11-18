#!/bin/bash

# Script to test poe.ninja API endpoints for Keepers league
# Usage: ./test_league_api.sh

LEAGUE="Keepers"
CURRENCY_BASE="https://poe.ninja/poe1/api/economy/stash/current/currency/overview"
ITEM_BASE="https://poe.ninja/poe1/api/economy/stash/current/item/overview"
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
                # 'links' is optional in Keepers; skip strict validation
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
    local base_url=""
    if [ "$endpoint_type" = "currencyoverview" ]; then
        base_url="$CURRENCY_BASE"
    else
        base_url="$ITEM_BASE"
    fi
    local url="${base_url}?league=${LEAGUE}&type=${data_type}"
    
    echo -n "Testing ${data_type} (${endpoint_type})... "
    
    # Make the API call and check if it returns valid JSON with data
    response=$(curl -s -L "$url")
    
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

# Test dense overviews endpoint
test_dense_overviews() {
    local url="https://poe.ninja/poe1/api/economy/stash/current/dense/overviews?league=${LEAGUE}"
    echo -n "Testing Dense Overviews... "
    response=$(curl -s -L "$url")
    if [ $? -eq 0 ] && echo "$response" | jq -e '.currencyOverviews and .itemOverviews' > /dev/null 2>&1; then
        local ccount=$(echo "$response" | jq '.currencyOverviews | length')
        local icount=$(echo "$response" | jq '.itemOverviews | length')
        if echo "$response" | jq -e '.currencyOverviews[0].type and .currencyOverviews[0].lines' > /dev/null 2>&1 \
           && echo "$response" | jq -e '.itemOverviews[0].type and .itemOverviews[0].lines' > /dev/null 2>&1; then
            echo "✓ SUCCESS (currency: $ccount types, item: $icount types)"
            SUCCESS_ENDPOINTS+=("DenseOverviews")
        else
            echo "⚠ PARTIAL (Structure issues in entries)"
            FAILED_ENDPOINTS+=("DenseOverviews")
        fi
    else
        echo "✗ FAILED (No response or invalid JSON)"
        FAILED_ENDPOINTS+=("DenseOverviews")
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
test_endpoint "itemoverview" "Vial"
test_endpoint "itemoverview" "DeliriumOrb"
test_endpoint "itemoverview" "Omen"
test_endpoint "itemoverview" "UniqueRelic"
test_endpoint "itemoverview" "ClusterJewel"
test_endpoint "itemoverview" "BlightedMap"
test_endpoint "itemoverview" "BlightRavagedMap"
test_endpoint "itemoverview" "Invitation"
test_endpoint "itemoverview" "Memory"
test_endpoint "itemoverview" "Coffin"
test_endpoint "itemoverview" "AllflameEmber"

# Dense overviews
test_dense_overviews

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
