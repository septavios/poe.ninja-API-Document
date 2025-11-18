# poe.ninja API Schema Documentation

Generated on: Tue Nov 18 23:32:45 +08 2025
League: Keepers

## Currency (currencyoverview)

**Status:** ✅ Working
**Items Count:** 113
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/currency/overview?league=Keepers&type=Currency`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `chaosEquivalent` | number | No | Equivalent value in Chaos Orbs |
| `currencyTypeName` | string | No | Name of the currency type |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `lowConfidencePaySparkLine` | object | No | Low confidence pay transaction trends |
| `lowConfidenceReceiveSparkLine` | object | No | Low confidence receive transaction trends |
| `pay` | object | No | Exchange rate data for paying with this currency |
| `paySparkLine` | object | No | Price trend for pay transactions |
| `receive` | object | No | Exchange rate data for receiving this currency |
| `receiveSparkLine` | object | No | Price trend for receive transactions |

### Sample Response

```json
{
  "currencyTypeName": "Mirror of Kalandra",
  "pay": {
    "id": 0,
    "league_id": 295,
    "pay_currency_id": 22,
    "get_currency_id": 1,
    "sample_time_utc": "2025-11-18T15:09:00.5930362Z",
    "count": 25,
    "value": 0.00001975,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 20
  },
  "receive": {
    "id": 0,
    "league_id": 295,
    "pay_currency_id": 1,
    "get_currency_id": 22,
    "sample_time_utc": "2025-11-18T15:09:00.5930362Z",
    "count": 38,
    "value": 51040,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 42
  },
  "paySparkLine": {
    "totalChange": 1.27,
    "data": [
      0,
      0,
      0,
      -33.33,
      0,
      0,
      1.27
    ]
  },
  "receiveSparkLine": {
    "totalChange": 3.77,
    "data": [
      0,
      -6.30,
      -15.83,
      -19.09,
      -13.80,
      2.96,
      3.77
    ]
  },
  "chaosEquivalent": 50879,
  "lowConfidencePaySparkLine": {
    "totalChange": 1.27,
    "data": [
      0,
      0,
      0,
      -33.33,
      0,
      0,
      1.27
    ]
  },
  "lowConfidenceReceiveSparkLine": {
    "totalChange": 3.77,
    "data": [
      0,
      -6.30,
      -15.83,
      -19.09,
      -13.80,
      2.96,
      3.77
    ]
  },
  "detailsId": "mirror-of-kalandra"
}
```

## Fragment (currencyoverview)

**Status:** ✅ Working
**Items Count:** 72
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/currency/overview?league=Keepers&type=Fragment`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `chaosEquivalent` | number | No | Equivalent value in Chaos Orbs |
| `currencyTypeName` | string | No | Name of the currency type |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `lowConfidencePaySparkLine` | object | No | Low confidence pay transaction trends |
| `lowConfidenceReceiveSparkLine` | object | No | Low confidence receive transaction trends |
| `pay` | object | Yes | Exchange rate data for paying with this currency |
| `paySparkLine` | object | No | Price trend for pay transactions |
| `receive` | object | No | Exchange rate data for receiving this currency |
| `receiveSparkLine` | object | No | Price trend for receive transactions |

### Sample Response

```json
{
  "currencyTypeName": "Voidborn Reliquary Key",
  "pay": {
    "id": 0,
    "league_id": 295,
    "pay_currency_id": 232,
    "get_currency_id": 1,
    "sample_time_utc": "2025-11-18T15:09:25.812547Z",
    "count": 1,
    "value": 0.00500,
    "data_point_count": 1,
    "includes_secondary": false,
    "listing_count": 1
  },
  "receive": {
    "id": 0,
    "league_id": 295,
    "pay_currency_id": 1,
    "get_currency_id": 232,
    "sample_time_utc": "2025-11-18T15:09:25.812547Z",
    "count": 338,
    "value": 278.4,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 544
  },
  "paySparkLine": {
    "totalChange": 0,
    "data": []
  },
  "receiveSparkLine": {
    "totalChange": 15.04,
    "data": [
      0,
      -1.65,
      2.73,
      -0.84,
      4.55,
      7.68,
      15.04
    ]
  },
  "chaosEquivalent": 278.4,
  "lowConfidencePaySparkLine": {
    "totalChange": 61.80,
    "data": [
      0,
      -2.88,
      61.80,
      61.80,
      61.80,
      61.80,
      61.80
    ]
  },
  "lowConfidenceReceiveSparkLine": {
    "totalChange": 15.04,
    "data": [
      0,
      -1.65,
      2.73,
      -0.84,
      4.55,
      7.68,
      15.04
    ]
  },
  "detailsId": "voidborn-reliquary-key"
}
```

## Oil (itemoverview)

**Status:** ✅ Working
**Items Count:** 16
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Oil`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Oil endpoint |
| `mutatedModifiers` | array | No | Field specific to Oil endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Oil endpoint |
| `stackSize` | number | No | Field specific to Oil endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 60076,
  "name": "Tainted Oil",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvT2lscy9WYWFsT2lsIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/54c3400bd8/VaalOil.png",
  "baseType": "Tainted Oil",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": 0,
    "data": [
      0,
      -0.33,
      -3.92,
      -8.33,
      -8.33,
      -3.33,
      0
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 0,
    "data": [
      0,
      -0.33,
      -3.92,
      -8.33,
      -8.33,
      -3.33,
      0
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 60.00,
  "exaltedValue": 6.77,
  "divineValue": 0.52,
  "count": 120,
  "detailsId": "tainted-oil",
  "tradeInfo": [],
  "listingCount": 120
}
```

## Incubator (itemoverview)

**Status:** ✅ Working
**Items Count:** 24
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Incubator`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Incubator endpoint |
| `mutatedModifiers` | array | No | Field specific to Incubator endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Incubator endpoint |
| `stackSize` | number | No | Field specific to Incubator endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 21674,
  "name": "Ornate Incubator",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvSW5jdWJhdGlvbi9JbmN1YmF0aW9uQ3VycmVuY3kiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/90d8bfe442/IncubationCurrency.png",
  "baseType": "Ornate Incubator",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": 0,
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 0,
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Adds an incubated Currency item to an equippable item\nItem drops after killing (3458-4230) monsters",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 5.00,
  "exaltedValue": 0.56,
  "divineValue": 0.04,
  "count": 399,
  "detailsId": "ornate-incubator",
  "tradeInfo": [],
  "listingCount": 14265
}
```

## Scarab (itemoverview)

**Status:** ✅ Working
**Items Count:** 108
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Scarab`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Scarab endpoint |
| `mutatedModifiers` | array | No | Field specific to Scarab endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Scarab endpoint |
| `stackSize` | number | No | Field specific to Scarab endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 113734,
  "name": "Breach Scarab of Lordship",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvU2NhcmFicy9HcmVhdGVyU2NhcmFiQnJlYWNoIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/6c012fae5c/GreaterScarabBreach.png",
  "baseType": "Breach Scarab of Lordship",
  "stackSize": 20,
  "itemClass": 0,
  "sparkLine": {
    "totalChange": 10.54,
    "data": [
      0,
      0,
      0,
      21.03,
      21.03,
      10.54,
      null
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 2045147,
    "data": [
      0,
      0,
      0,
      21.03,
      21.03,
      10.54,
      2045147
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Breaches in Area each contain a Breachlord",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "Their kingdoms always seek expansion.",
  "chaosValue": 351169,
  "exaltedValue": 39635,
  "divineValue": 3046,
  "count": 2,
  "detailsId": "breach-scarab-of-lordship",
  "tradeInfo": [],
  "listingCount": 6
}
```

## Fossil (itemoverview)

**Status:** ✅ Working
**Items Count:** 25
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Fossil`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Fossil endpoint |
| `mutatedModifiers` | array | No | Field specific to Fossil endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Fossil endpoint |
| `stackSize` | number | No | Field specific to Fossil endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 7661,
  "name": "Hollow Fossil",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvRGVsdmUvQW1iZXJFeWUiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/7579485795/AmberEye.png",
  "baseType": "Hollow Fossil",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": 24.93,
    "data": [
      0,
      0.25,
      -1.78,
      6.69,
      7.28,
      19.20,
      24.93
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 24.93,
    "data": [
      0,
      0.25,
      -1.78,
      6.69,
      7.28,
      19.20,
      24.93
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Has an Abyssal socket",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 104.8,
  "exaltedValue": 11.83,
  "divineValue": 0.91,
  "count": 49,
  "detailsId": "hollow-fossil",
  "tradeInfo": [],
  "listingCount": 52
}
```

## Resonator (itemoverview)

**Status:** ✅ Working
**Items Count:** 4
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Resonator`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | Yes | Base item type name |
| `chaosValue` | number | Yes | Current market value in Chaos Orbs |
| `count` | number | Yes | Number of items available in the market |
| `detailsId` | string | Yes | Unique identifier for detailed item information |
| `divineValue` | number | Yes | Current market value in Divine Orbs |
| `exaltedValue` | number | Yes | Current market value in Exalted Orbs |
| `explicitModifiers` | array | Yes | Array of explicit item modifiers |
| `flavourText` | string | Yes | Lore text associated with the item |
| `icon` | string | Yes | URL to the item's icon image |
| `id` | number | Yes | Unique identifier for the item |
| `implicitModifiers` | array | Yes | Array of implicit item modifiers |
| `itemClass` | number | Yes | Numeric identifier for the item class category |
| `listingCount` | number | Yes | Number of active trade listings |
| `lowConfidenceSparkLine` | object | Yes | Field specific to Resonator endpoint |
| `mutatedModifiers` | array | Yes | Field specific to Resonator endpoint |
| `name` | string | Yes | Display name of the item |
| `sparkLine` | object | Yes | Field specific to Resonator endpoint |
| `stackSize` | number | Yes | Field specific to Resonator endpoint |
| `tradeInfo` | array | Yes | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 7662,
  "name": "Prime Chaotic Resonator",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvRGVsdmUvUmVyb2xsMngyQyIsInciOjIsImgiOjIsInNjYWxlIjoxfV0/584267701b/Reroll2x2C.png",
  "baseType": "Prime Chaotic Resonator",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": -13.79,
    "data": [
      0,
      3.45,
      3.45,
      -5.17,
      -8.10,
      -13.79,
      -13.79
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": -13.79,
    "data": [
      0,
      3.45,
      3.45,
      -5.17,
      -8.10,
      -13.79,
      -13.79
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 25.00,
  "exaltedValue": 2.82,
  "divineValue": 0.22,
  "count": 399,
  "detailsId": "prime-chaotic-resonator",
  "tradeInfo": [],
  "listingCount": 527
}
```

## Essence (itemoverview)

**Status:** ✅ Working
**Items Count:** 104
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Essence`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Essence endpoint |
| `mapTier` | number | No | Field specific to Essence endpoint |
| `mutatedModifiers` | array | No | Field specific to Essence endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Essence endpoint |
| `stackSize` | number | No | Field specific to Essence endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 494,
  "name": "Essence of Horror",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvRXNzZW5jZS9Ib3Jyb3IxIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/748d594bde/Horror1.png",
  "mapTier": 8,
  "baseType": "Essence of Horror",
  "stackSize": 9,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": 11.11,
    "data": [
      0,
      0,
      0,
      0,
      0,
      3.67,
      11.11
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 11.11,
    "data": [
      0,
      0,
      0,
      0,
      0,
      3.67,
      11.11
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Upgrades a normal item to rare or reforges a rare item, guaranteeing one property",
      "optional": false
    },
    {
      "text": "",
      "optional": false
    },
    {
      "text": "Weapon: 16% chance to gain a Power, Frenzy or Endurance Charge on Kill",
      "optional": false
    },
    {
      "text": "Gloves: Socketed Gems have +3.5% Critical Strike Chance",
      "optional": false
    },
    {
      "text": "Boots: 5% reduced Elemental Damage Taken while stationary",
      "optional": false
    },
    {
      "text": "Body Armour: You take 10% reduced Extra Damage from Critical Strikes per Endurance Charge",
      "optional": false
    },
    {
      "text": "Helmet: Socketed Gems deal 30% more Elemental Damage",
      "optional": false
    },
    {
      "text": "Shield: Chill Nearby Enemies when you Block",
      "optional": false
    },
    {
      "text": "Quiver: 8 to 12 Added Cold Damage per Frenzy Charge",
      "optional": false
    },
    {
      "text": "Amulet: (15-25)% chance to Crush on Hit",
      "optional": false
    },
    {
      "text": "Ring: 4 to 7 Added Cold Damage per Frenzy Charge",
      "optional": false
    },
    {
      "text": "Belt: Gain Alchemist's Genius when you use a Flask",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 10.00,
  "exaltedValue": 1.13,
  "divineValue": 0.09,
  "count": 119,
  "detailsId": "essence-of-horror",
  "tradeInfo": [],
  "listingCount": 129
}
```

## DivinationCard (itemoverview)

**Status:** ✅ Working
**Items Count:** 446
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=DivinationCard`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `artFilename` | string | No | Field specific to DivinationCard endpoint |
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to DivinationCard endpoint |
| `mutatedModifiers` | array | No | Field specific to DivinationCard endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to DivinationCard endpoint |
| `stackSize` | number | No | Field specific to DivinationCard endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 67973,
  "name": "The Emptiness",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvRGl2aW5hdGlvbi9JbnZlbnRvcnlJY29uIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/f34bf8cbb5/InventoryIcon.png",
  "baseType": "The Emptiness",
  "stackSize": 6,
  "artFilename": "TheEmptiness",
  "itemClass": 6,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": 5066,
    "data": [
      0,
      -4.68,
      -7.02,
      4730,
      4763,
      4900,
      5066
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "<gemitem>{Vaal Breach}\n<default>{Quality:} <augmented>{+6%}\n<corrupted>{Corrupted}",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "He appeared before the Light Eater, and at once knew his soul was damned.",
  "chaosValue": 23060,
  "exaltedValue": 2603,
  "divineValue": 200.0,
  "count": 1,
  "detailsId": "the-emptiness",
  "tradeInfo": [],
  "listingCount": 2
}
```

## SkillGem (itemoverview)

**Status:** ✅ Working
**Items Count:** 7178
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=SkillGem`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `corrupted` | boolean | Yes | Field specific to SkillGem endpoint |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `gemLevel` | number | No | Field specific to SkillGem endpoint |
| `gemQuality` | number | Yes | Field specific to SkillGem endpoint |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to SkillGem endpoint |
| `mutatedModifiers` | array | No | Field specific to SkillGem endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to SkillGem endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to SkillGem endpoint |

### Sample Response

```json
{
  "id": 96363,
  "name": "Awakened Enlighten Support",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvR2Vtcy9TdXBwb3J0L1N1cHBvcnRQbHVzL0VubGlnaHRlbnBsdXMiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/7ec7d0544d/Enlightenplus.png",
  "levelRequired": 80,
  "baseType": "Awakened Enlighten Support",
  "variant": "5/20c",
  "itemClass": 4,
  "sparkLine": {
    "totalChange": 17.94,
    "data": [
      null,
      null,
      0,
      null,
      null,
      17.94,
      null
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": -13.69,
    "data": [
      0,
      -9.28,
      -16.24,
      -20.51,
      -18.07,
      -1.21,
      -13.69
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "This Gem gains 100% increased Experience",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "corrupted": true,
  "gemLevel": 5,
  "gemQuality": 20,
  "chaosValue": 86303,
  "exaltedValue": 9741,
  "divineValue": 748.5,
  "count": 3,
  "detailsId": "awakened-enlighten-support-5-20c",
  "tradeInfo": [],
  "listingCount": 3
}
```

## BaseType (itemoverview)

**Status:** ✅ Working
**Items Count:** 22707
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=BaseType`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `itemType` | string | No | Descriptive item type category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to BaseType endpoint |
| `mutatedModifiers` | array | No | Field specific to BaseType endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to BaseType endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to BaseType endpoint |

### Sample Response

```json
{
  "id": 39592,
  "name": "Scarlet Raiment",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQXJtb3Vycy9Cb2R5QXJtb3Vycy9Cb2R5RGV4SW50MUMiLCJ3IjoyLCJoIjozLCJzY2FsZSI6MX1d/95329b265f/BodyDexInt1C.png",
  "levelRequired": 86,
  "baseType": "Scarlet Raiment",
  "variant": "Hunter",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": 3037908,
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      3037908
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "itemType": "Body Armour",
  "chaosValue": 625830,
  "exaltedValue": 70635,
  "divineValue": 5428,
  "count": 2,
  "detailsId": "scarlet-raiment-86-hunter",
  "tradeInfo": [],
  "listingCount": 3
}
```

## HelmetEnchant (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=HelmetEnchant`

## UniqueMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 82
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueMap`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueMap endpoint |
| `mapTier` | number | No | Field specific to UniqueMap endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueMap endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 44339,
  "name": "Doryani's Machinarium",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9Eb3J5YW5pcyIsInciOjEsImgiOjEsInNjYWxlIjoxfV0/581444be53/Doryanis.png",
  "mapTier": 16,
  "baseType": "Maze Map",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 174.5,
    "data": [
      0,
      13.90,
      12,
      108,
      106.8,
      118.3,
      174.5
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 174.5,
    "data": [
      0,
      13.90,
      12,
      108,
      106.8,
      118.3,
      174.5
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "(20-50)% increased Experience gain",
      "optional": false
    },
    {
      "text": "Unique Boss is augmented by Player choices",
      "optional": false
    },
    {
      "text": "Found Items have 10% chance to drop Corrupted in Area",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "We are ever the makers of our own undoing.",
  "chaosValue": 576.5,
  "exaltedValue": 65.07,
  "divineValue": 5.00,
  "count": 95,
  "detailsId": "doryanis-machinarium-t16",
  "tradeInfo": [],
  "listingCount": 95
}
```

## Map (itemoverview)

**Status:** ✅ Working
**Items Count:** 372
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Map`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Map endpoint |
| `mapTier` | number | No | Field specific to Map endpoint |
| `mutatedModifiers` | array | No | Field specific to Map endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Map endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to Map endpoint |

### Sample Response

```json
{
  "id": 128210,
  "name": "Ziggurat Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9VYmVyTWF1c29sZXVtIiwidyI6MSwiaCI6MSwic2NhbGUiOjEsIm1uIjoyMywibXQiOjE3fV0/d902446871/UberMausoleum.png",
  "mapTier": 17,
  "baseType": "Ziggurat Map",
  "variant": ", Gen-23",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 16.23,
    "data": [
      0,
      -7.02,
      -7.02,
      -7.14,
      -7.02,
      4.60,
      16.23
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 16.23,
    "data": [
      0,
      -7.02,
      -7.02,
      -7.14,
      -7.02,
      4.60,
      16.23
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 50.00,
  "exaltedValue": 5.64,
  "divineValue": 0.43,
  "count": 399,
  "detailsId": "ziggurat-map-t17-gen-23",
  "tradeInfo": [],
  "listingCount": 5307
}
```

## UniqueJewel (itemoverview)

**Status:** ✅ Working
**Items Count:** 124
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueJewel`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueJewel endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueJewel endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueJewel endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 40773,
  "name": "Voices",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvSmV3ZWxzL1VuaXF1ZUpld2VsQmFzZTMiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/314c9905c8/UniqueJewelBase3.png",
  "baseType": "Large Cluster Jewel",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 18.23,
    "data": [
      0,
      -0.79,
      -7.32,
      -13.79,
      -12.14,
      15.78,
      18.23
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 18.23,
    "data": [
      0,
      -0.79,
      -7.32,
      -13.79,
      -12.14,
      15.78,
      18.23
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "Only a madman would ignore a god's instructions.",
  "chaosValue": 42546,
  "exaltedValue": 4802,
  "divineValue": 369.0,
  "count": 71,
  "detailsId": "voices-large-cluster-jewel",
  "tradeInfo": [],
  "listingCount": 71
}
```

## UniqueFlask (itemoverview)

**Status:** ✅ Working
**Items Count:** 43
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueFlask`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueFlask endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueFlask endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueFlask endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 101729,
  "name": "Progenesis",
  "icon": "https://web.poecdn.com/gen/image/WzksMTQseyJmIjoiMkRJdGVtcy9GbGFza3MvVWJlck1hdmVuRmxhc2siLCJ3IjoxLCJoIjoyLCJzY2FsZSI6MSwibGV2ZWwiOjEsInJlbGljIjowfV0/ac476ad3d0/UberMavenFlask.png",
  "levelRequired": 60,
  "baseType": "Amethyst Flask",
  "itemClass": 9,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": 61.43,
    "data": [
      0,
      -5.68,
      8.73,
      6.33,
      0.36,
      4.39,
      61.43
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "(10-20)% reduced Charges per use",
      "optional": false
    },
    {
      "text": "(1-35)% reduced Duration",
      "optional": true
    },
    {
      "text": "(8-35)% increased Duration",
      "optional": true
    },
    {
      "text": "When Hit during effect, 25% of Life loss from Damage taken occurs over 4 seconds instead",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "They were bred in a cosmic ocean of raw creation.\nFeasting and drinking of the milk of the mother,\nthey fought to the death for every last drop.",
  "chaosValue": 18217,
  "exaltedValue": 2056,
  "divineValue": 158.0,
  "count": 1,
  "detailsId": "progenesis-relic",
  "tradeInfo": [],
  "listingCount": 1
}
```

## UniqueWeapon (itemoverview)

**Status:** ✅ Working
**Items Count:** 762
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueWeapon`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `itemType` | string | No | Descriptive item type category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueWeapon endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueWeapon endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueWeapon endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | Yes | Field specific to UniqueWeapon endpoint |

### Sample Response

```json
{
  "id": 130152,
  "name": "Foulborn Reefbane",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvV2VhcG9ucy9Ud29IYW5kV2VhcG9ucy9GaXNoaW5nUm9kcy9SZWVmYmFuZSIsInciOjEsImgiOjQsInNjYWxlIjoxLCJtdXRhdGVkIjp0cnVlfV0/7ca32d21f4/Reefbane.png",
  "baseType": "Fishing Rod",
  "variant": "Cast Stun, Otherworldly Lure",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": 743.4,
    "data": [
      0,
      187.3,
      160.8,
      -83.37,
      22.65,
      826.3,
      743.4
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "(12-20)% increased Quantity of Fish Caught",
      "optional": false
    },
    {
      "text": "Glows while in an Area containing a Unique Fish",
      "optional": false
    }
  ],
  "mutatedModifiers": [
    {
      "text": "(33-40)% chance to Ignore Stuns while Casting",
      "optional": false
    },
    {
      "text": "Otherworldly Lure",
      "optional": false
    }
  ],
  "flavourText": "He cast far into the ocean\nAnd tore out her heart.",
  "itemType": "Fishing Rod",
  "chaosValue": 22507,
  "exaltedValue": 2540,
  "divineValue": 195.2,
  "count": 3,
  "detailsId": "foulborn-reefbane-cast-stun-otherworldly-lure-fishing-rod",
  "tradeInfo": [],
  "listingCount": 3
}
```

## UniqueArmour (itemoverview)

**Status:** ✅ Working
**Items Count:** 897
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueArmour`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `itemType` | string | No | Descriptive item type category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueArmour endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueArmour endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueArmour endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 118882,
  "name": "Svalinn",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQXJtb3Vycy9TaGllbGRzL0xheWVyZWRCYXJyaWVyU2hpZWxkIiwidyI6MiwiaCI6NCwic2NhbGUiOjF9XQ/54079c2263/LayeredBarrierShield.png",
  "levelRequired": 51,
  "baseType": "Girded Tower Shield",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 4.84,
    "data": [
      0,
      6.23,
      -5.64,
      -11.65,
      -9.64,
      -6.98,
      4.84
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 4.84,
    "data": [
      0,
      6.23,
      -5.64,
      -11.65,
      -9.64,
      -6.98,
      4.84
    ]
  },
  "implicitModifiers": [
    {
      "text": "+(10-20) to maximum Life",
      "optional": false
    }
  ],
  "explicitModifiers": [
    {
      "text": "(10-15)% Chance to Block Spell Damage",
      "optional": false
    },
    {
      "text": "+(100-150) to Ward",
      "optional": false
    },
    {
      "text": "-10% to maximum Chance to Block Attack Damage",
      "optional": false
    },
    {
      "text": "-10% to maximum Chance to Block Spell Damage",
      "optional": false
    },
    {
      "text": "Chance to Block is Lucky",
      "optional": false
    },
    {
      "text": "Trigger a Socketed Elemental Spell on Block, with a 0.25 second Cooldown",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "The priests found the Great Shield the night it fell to Middengard,\nbut it was the smiths who delved into the secrets it held.",
  "itemType": "Shield",
  "chaosValue": 6918,
  "exaltedValue": 780.8,
  "divineValue": 60.00,
  "count": 160,
  "detailsId": "svalinn-girded-tower-shield",
  "tradeInfo": [],
  "listingCount": 160
}
```

## UniqueAccessory (itemoverview)

**Status:** ✅ Working
**Items Count:** 333
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueAccessory`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `itemType` | string | No | Descriptive item type category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueAccessory endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueAccessory endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueAccessory endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 102015,
  "name": "Original Sin",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvUmluZ3MvU2FuY3R1bVNwZWNpYWxVbmlxdWVSaW5nIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/e0ff1c1c6b/SanctumSpecialUniqueRing.png",
  "levelRequired": 52,
  "baseType": "Amethyst Ring",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 71.80,
    "data": [
      0,
      -2.66,
      13.83,
      27.40,
      74.95,
      61.86,
      71.80
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 71.80,
    "data": [
      0,
      -2.66,
      13.83,
      27.40,
      74.95,
      61.86,
      71.80
    ]
  },
  "implicitModifiers": [
    {
      "text": "+(20-27)% to Chaos Resistance",
      "optional": false
    }
  ],
  "explicitModifiers": [
    {
      "text": "All Elemental Damage Converted to Chaos Damage",
      "optional": false
    },
    {
      "text": "Nearby Enemies' Chaos Resistance is 0",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "Innocence rose to godhood not on inspired faith,\nbut on the vilification and hatred of another.",
  "itemType": "Ring",
  "chaosValue": 62343,
  "exaltedValue": 7036,
  "divineValue": 540.7,
  "count": 12,
  "detailsId": "original-sin-amethyst-ring",
  "tradeInfo": [],
  "listingCount": 12
}
```

## Beast (itemoverview)

**Status:** ✅ Working
**Items Count:** 215
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Beast`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Beast endpoint |
| `mutatedModifiers` | array | No | Field specific to Beast endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Beast endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 20337,
  "name": "Mutant Arach",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvQmVzdGlhcnlPcmJGdWxsIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/3214b44360/BestiaryOrbFull.png",
  "baseType": "Spiders|Arachnids|The Caverns",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": -7.02,
    "data": [
      0,
      -3.55,
      -59.02,
      -59.81,
      -71.77,
      -10.28,
      -7.02
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 115.3,
  "exaltedValue": 13.01,
  "divineValue": 1.00,
  "count": 3,
  "detailsId": "mutant-arach",
  "tradeInfo": [],
  "listingCount": 3
}
```

## Prophecy (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Prophecy`

## Watchstone (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Watchstone`

## Vial (itemoverview)

**Status:** ✅ Working
**Items Count:** 9
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Vial`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Vial endpoint |
| `mutatedModifiers` | array | No | Field specific to Vial endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Vial endpoint |
| `stackSize` | number | No | Field specific to Vial endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 39824,
  "name": "Vial of Summoning",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvVmlhbFNwaXJpdERyaW5rZXIiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/b4c71ef906/VialSpiritDrinker.png",
  "baseType": "Vial of Summoning",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": -3.74,
    "data": [
      0,
      -1.48,
      -4.02,
      38.88,
      29.26,
      22.46,
      -3.74
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": -3.74,
    "data": [
      0,
      -1.48,
      -4.02,
      38.88,
      29.26,
      22.46,
      -3.74
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "Call to place the demon gods of the past.",
  "chaosValue": 1047,
  "exaltedValue": 118.2,
  "divineValue": 9.08,
  "count": 76,
  "detailsId": "vial-of-summoning",
  "tradeInfo": [],
  "listingCount": 76
}
```

## DeliriumOrb (itemoverview)

**Status:** ✅ Working
**Items Count:** 16
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=DeliriumOrb`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to DeliriumOrb endpoint |
| `mutatedModifiers` | array | No | Field specific to DeliriumOrb endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to DeliriumOrb endpoint |
| `stackSize` | number | No | Field specific to DeliriumOrb endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 40905,
  "name": "Cartographer's Delirium Orb",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvRGVsaXJpdW0vRGVsaXJpdW1PcmJNYXBzIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/ad4a59a2fc/DeliriumOrbMaps.png",
  "baseType": "Cartographer's Delirium Orb",
  "stackSize": 10,
  "itemClass": 5,
  "sparkLine": {
    "totalChange": 25,
    "data": [
      0,
      10,
      25,
      25,
      25,
      25,
      25
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 25,
    "data": [
      0,
      10,
      25,
      25,
      25,
      25,
      25
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Modifies a Map item adding layers of Delirium with the Map Items reward type",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 5.00,
  "exaltedValue": 0.56,
  "divineValue": 0.04,
  "count": 311,
  "detailsId": "cartographers-delirium-orb",
  "tradeInfo": [],
  "listingCount": 358
}
```

## Omen (itemoverview)

**Status:** ✅ Working
**Items Count:** 12
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Omen`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to Omen endpoint |
| `mutatedModifiers` | array | No | Field specific to Omen endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to Omen endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 107341,
  "name": "Omen of Fortune",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvQXptZXJpL1Zvb2Rvb09tZW5zMVB1cnBsZSIsInciOjEsImgiOjEsInNjYWxlIjoxfV0/68c64f2338/VoodooOmens1Purple.png",
  "baseType": "Omen of Fortune",
  "itemClass": 5,
  "sparkLine": {
    "totalChange": -25.93,
    "data": [
      0,
      1.02,
      -1.25,
      -18.81,
      -25.68,
      -28.31,
      -25.93
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": -25.93,
    "data": [
      0,
      1.02,
      -1.25,
      -18.81,
      -25.68,
      -28.31,
      -25.93
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Will be Consumed when you use an Orb of Chance\non an item which can become Unique to ensure it does so",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 691.8,
  "exaltedValue": 78.08,
  "divineValue": 6.00,
  "count": 10,
  "detailsId": "omen-of-fortune",
  "tradeInfo": [],
  "listingCount": 10
}
```

## UniqueRelic (itemoverview)

**Status:** ✅ Working
**Items Count:** 12
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=UniqueRelic`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to UniqueRelic endpoint |
| `mutatedModifiers` | array | No | Field specific to UniqueRelic endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to UniqueRelic endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 107858,
  "name": "The Original Scripture",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvUmVsaWNzL1JlbGljVW5pcXVlNHgxIiwidyI6NCwiaCI6MSwic2NhbGUiOjF9XQ/e6e8bfb6e4/RelicUnique4x1.png",
  "baseType": "Papyrus Relic",
  "itemClass": 3,
  "sparkLine": {
    "totalChange": 63.12,
    "data": [
      0,
      0.70,
      18.11,
      19.76,
      88.00,
      63.12,
      null
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 97.66,
    "data": [
      0,
      0.70,
      18.11,
      19.76,
      88.00,
      63.12,
      97.66
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "The Herald of the Scourge drops the Original Sin",
      "optional": false
    },
    {
      "text": "Cannot have Inspiration",
      "optional": false
    },
    {
      "text": "Maximum Resolve is 1",
      "optional": false
    },
    {
      "text": "Cannot be used with Forbidden Tomes below level 83",
      "optional": false
    },
    {
      "text": "This item is destroyed when applied to a Sanctum",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "\"It's all here. The lie at the core of my faith. Maxarius was not the first chosen of Innocence. Maxarius was Innocence himself. A charlatan, a liar, and a power-seeker.\" - Lycia, the Heretic",
  "chaosValue": 65779,
  "exaltedValue": 7424,
  "divineValue": 570.5,
  "count": 2,
  "detailsId": "the-original-scripture-relic",
  "tradeInfo": [],
  "listingCount": 2
}
```

## ClusterJewel (itemoverview)

**Status:** ✅ Working
**Items Count:** 850
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=ClusterJewel`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to ClusterJewel endpoint |
| `mutatedModifiers` | array | No | Field specific to ClusterJewel endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to ClusterJewel endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to ClusterJewel endpoint |

### Sample Response

```json
{
  "id": 64014,
  "name": "Claw Attacks deal 12% increased Damage with Hits and Ailments, Dagger Attacks deal 12% increased Damage with Hits and Ailments",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvSmV3ZWxzL05ld0dlbUJhc2UzIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/db35e60885/NewGemBase3.png",
  "levelRequired": 84,
  "baseType": "Large Cluster Jewel",
  "variant": "12 passives",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 13.13,
    "data": [
      0,
      16.52,
      10.29,
      2.85,
      -1.88,
      -10.06,
      13.13
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 13.13,
    "data": [
      0,
      16.52,
      10.29,
      2.85,
      -1.88,
      -10.06,
      13.13
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 691.8,
  "exaltedValue": 78.08,
  "divineValue": 6.00,
  "count": 399,
  "detailsId": "claw-attacks-deal-12-increased-damage-with-hits-and-ailments-dagger-attacks-deal-12-increased-damage-with-hits-and-ailments-12-passives-84",
  "tradeInfo": [
    {
      "mod": "enchant.stat_3948993189",
      "min": 0,
      "max": 0,
      "option": "3"
    },
    {
      "mod": "enchant.stat_3086156145",
      "min": 12,
      "max": 12
    }
  ],
  "listingCount": 690
}
```

## BlightedMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 405
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=BlightedMap`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to BlightedMap endpoint |
| `mapTier` | number | No | Field specific to BlightedMap endpoint |
| `mutatedModifiers` | array | No | Field specific to BlightedMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to BlightedMap endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to BlightedMap endpoint |

### Sample Response

```json
{
  "id": 129788,
  "name": "Blighted Lava Lake Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9Db3Jwc2UiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MSwibW4iOjIzLCJtdCI6MTAsIm1iIjp0cnVlfV0/0f03db9200/Corpse.png",
  "mapTier": 10,
  "baseType": "Blighted Lava Lake Map",
  "variant": ", Gen-23",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": -4.87,
    "data": [
      0,
      -1.32,
      -4.87,
      -9.90,
      -10.44,
      -7.92,
      -4.87
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 115.3,
  "exaltedValue": 13.01,
  "divineValue": 1.00,
  "count": 1,
  "detailsId": "blighted-lava-lake-map-t10-gen-23",
  "tradeInfo": [],
  "listingCount": 1
}
```

## BlightRavagedMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 133
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=BlightRavagedMap`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to BlightRavagedMap endpoint |
| `mapTier` | number | No | Field specific to BlightRavagedMap endpoint |
| `mutatedModifiers` | array | No | Field specific to BlightRavagedMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to BlightRavagedMap endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to BlightRavagedMap endpoint |

### Sample Response

```json
{
  "id": 129565,
  "name": "Blight-ravaged Racecourse Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9SYWNlY291cnNlIiwidyI6MSwiaCI6MSwic2NhbGUiOjEsIm1uIjoyMywibXQiOjE1LCJtdWIiOnRydWV9XQ/232c7a87f6/Racecourse.png",
  "mapTier": 15,
  "baseType": "Blight-ravaged Racecourse Map",
  "variant": ", Gen-23",
  "itemClass": 2,
  "sparkLine": {
    "totalChange": 0,
    "data": []
  },
  "lowConfidenceSparkLine": {
    "totalChange": 700,
    "data": [
      0,
      900,
      null,
      3,
      32,
      32,
      700
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 80.00,
  "exaltedValue": 9.03,
  "divineValue": 0.69,
  "count": 1,
  "detailsId": "blight-ravaged-racecourse-map-t15-gen-23",
  "tradeInfo": [],
  "listingCount": 1
}
```

## Invitation (itemoverview)

**Status:** ✅ Working
**Items Count:** 4
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Invitation`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | Yes | Base item type name |
| `chaosValue` | number | Yes | Current market value in Chaos Orbs |
| `count` | number | Yes | Number of items available in the market |
| `detailsId` | string | Yes | Unique identifier for detailed item information |
| `divineValue` | number | Yes | Current market value in Divine Orbs |
| `exaltedValue` | number | Yes | Current market value in Exalted Orbs |
| `explicitModifiers` | array | Yes | Array of explicit item modifiers |
| `flavourText` | string | Yes | Lore text associated with the item |
| `icon` | string | Yes | URL to the item's icon image |
| `id` | number | Yes | Unique identifier for the item |
| `implicitModifiers` | array | Yes | Array of implicit item modifiers |
| `itemClass` | number | Yes | Numeric identifier for the item class category |
| `listingCount` | number | Yes | Number of active trade listings |
| `lowConfidenceSparkLine` | object | Yes | Field specific to Invitation endpoint |
| `mutatedModifiers` | array | Yes | Field specific to Invitation endpoint |
| `name` | string | Yes | Display name of the item |
| `sparkLine` | object | Yes | Field specific to Invitation endpoint |
| `tradeInfo` | array | Yes | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 93814,
  "name": "Incandescent Invitation",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvUXVlc3RJdGVtcy9DbGVhbnNpbmdGaXJlT3JiUXVlc3Q1IiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/e6f9234053/CleansingFireOrbQuest5.png",
  "baseType": "Incandescent Invitation",
  "itemClass": 0,
  "sparkLine": {
    "totalChange": 42.62,
    "data": [
      0,
      4.64,
      -1.05,
      5.14,
      5.14,
      23.69,
      42.62
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": 42.62,
    "data": [
      0,
      4.64,
      -1.05,
      5.14,
      5.14,
      23.69,
      42.62
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "mutatedModifiers": [],
  "flavourText": "From the corona of an ancient star,\nthe Searing Exarch seeks to master the Atlas.",
  "chaosValue": 115.3,
  "exaltedValue": 13.01,
  "divineValue": 1.00,
  "count": 399,
  "detailsId": "incandescent-invitation",
  "tradeInfo": [],
  "listingCount": 1454
}
```

## Memory (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Memory`

## Coffin (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=Coffin`

## AllflameEmber (itemoverview)

**Status:** ✅ Working
**Items Count:** 8
**URL:** `https://poe.ninja/poe1/api/economy/stash/current/item/overview?league=Keepers&type=AllflameEmber`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkLine` | object | No | Field specific to AllflameEmber endpoint |
| `mutatedModifiers` | array | No | Field specific to AllflameEmber endpoint |
| `name` | string | No | Display name of the item |
| `sparkLine` | object | No | Field specific to AllflameEmber endpoint |
| `stackSize` | number | No | Field specific to AllflameEmber endpoint |
| `tradeFilter` | object | No | Field specific to AllflameEmber endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 128155,
  "name": "Allflame Ember of the Ethereal",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvTmVjcm9wb2xpcy9BbGxmbGFtZUNsZWFuc2VkIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/d59cc529d3/AllflameCleansed.png",
  "baseType": "Allflame Ember of the Ethereal",
  "stackSize": 20,
  "itemClass": 0,
  "sparkLine": {
    "totalChange": -0.13,
    "data": [
      0,
      -3.31,
      -3.34,
      -5.42,
      -5.94,
      -3.34,
      -0.13
    ]
  },
  "lowConfidenceSparkLine": {
    "totalChange": -0.13,
    "data": [
      0,
      -3.31,
      -3.34,
      -5.42,
      -5.94,
      -3.34,
      -0.13
    ]
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Substitutes Monster Packs in Area\nPack Monsters cannot drop\nEquipment, Flasks or Tinctures",
      "optional": false
    }
  ],
  "mutatedModifiers": [],
  "flavourText": "",
  "chaosValue": 173.0,
  "exaltedValue": 19.52,
  "divineValue": 1.50,
  "count": 143,
  "detailsId": "allflame-ember-of-the-ethereal",
  "tradeInfo": [],
  "tradeFilter": {
    "query": {
      "type": {
        "option": "Allflame Ember of the Ethereal"
      },
      "filters": {
        "misc_filters": {
          "filters": {}
        }
      }
    }
  },
  "listingCount": 147
}
```

# Field Relationships & Common Patterns

## Common Fields Across Endpoints

### Price Fields
- `chaosValue`: Present in all item endpoints, represents current Chaos Orb value
- `exaltedValue`: Present in high-value items, represents Exalted Orb value
- `divineValue`: Present in high-value items, represents Divine Orb value

### Identification Fields
- `id`: Unique numeric identifier across all item endpoints
- `name`: Display name, present in all endpoints
- `detailsId`: URL-friendly identifier for detailed views

### Market Data Fields
- `count`: Available quantity in market
- `listingCount`: Number of active trade listings
- `sparkline`: Price trend data over time
- `lowConfidenceSparkline`: Price trends with confidence indicators

### Item-Specific Fields
- `links`: Socket links (weapons, armor) - **Missing in UniqueArmour/UniqueAccessory**
- `levelRequired`: Character level requirement
- `itemClass`/`itemType`: Item categorization
- `implicitModifiers`/`explicitModifiers`: Item stat modifiers

### Currency-Specific Fields
- `pay`/`receive`: Exchange rate objects with detailed trading data
- `chaosEquivalent`: Standardized Chaos Orb value
- `paySparkLine`/`receiveSparkLine`: Directional price trends

