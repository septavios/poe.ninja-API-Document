# poe.ninja API Schema Documentation

Generated on: Tue Aug 19 02:46:43 +08 2025
League: Mercenaries

## Currency (currencyoverview)

**Status:** ✅ Working
**Items Count:** 111
**URL:** `https://poe.ninja/api/data/currencyoverview?league=Mercenaries&type=Currency`

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
    "league_id": 259,
    "pay_currency_id": 22,
    "get_currency_id": 1,
    "sample_time_utc": "2025-08-18T18:26:35.6564187Z",
    "count": 53,
    "value": 0.00000607500000,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 248
  },
  "receive": {
    "id": 0,
    "league_id": 259,
    "pay_currency_id": 1,
    "get_currency_id": 22,
    "sample_time_utc": "2025-08-18T18:26:35.6564187Z",
    "count": 59,
    "value": 167617.44000000000000,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 87
  },
  "paySparkLine": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      64.61
    ],
    "totalChange": 64.61
  },
  "receiveSparkLine": {
    "data": [
      0,
      -0.09,
      1.61,
      3.58,
      3.13,
      2.72,
      2.79
    ],
    "totalChange": 2.79
  },
  "chaosEquivalent": 166193.83,
  "lowConfidencePaySparkLine": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      64.61
    ],
    "totalChange": 64.61
  },
  "lowConfidenceReceiveSparkLine": {
    "data": [
      0,
      -0.09,
      1.61,
      3.58,
      3.13,
      2.72,
      2.79
    ],
    "totalChange": 2.79
  },
  "detailsId": "mirror-of-kalandra"
}
```

## Fragment (currencyoverview)

**Status:** ✅ Working
**Items Count:** 82
**URL:** `https://poe.ninja/api/data/currencyoverview?league=Mercenaries&type=Fragment`

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
  "currencyTypeName": "Syndicate Medallion",
  "pay": {
    "id": 0,
    "league_id": 259,
    "pay_currency_id": 260,
    "get_currency_id": 1,
    "sample_time_utc": "2025-08-18T18:09:26.220087Z",
    "count": 2,
    "value": 0.0084060,
    "data_point_count": 1,
    "includes_secondary": false,
    "listing_count": 3
  },
  "receive": {
    "id": 0,
    "league_id": 259,
    "pay_currency_id": 1,
    "get_currency_id": 260,
    "sample_time_utc": "2025-08-18T18:09:26.220087Z",
    "count": 199,
    "value": 1357.50000000000000,
    "data_point_count": 1,
    "includes_secondary": true,
    "listing_count": 577
  },
  "paySparkLine": {
    "data": [],
    "totalChange": 0
  },
  "receiveSparkLine": {
    "data": [
      0,
      -1.58,
      -2.88,
      -1.44,
      2.23,
      2.23,
      2.80
    ],
    "totalChange": 2.80
  },
  "chaosEquivalent": 1357.50,
  "lowConfidencePaySparkLine": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0.05
    ],
    "totalChange": 0.05
  },
  "lowConfidenceReceiveSparkLine": {
    "data": [
      0,
      -1.58,
      -2.88,
      -1.44,
      2.23,
      2.23,
      2.80
    ],
    "totalChange": 2.80
  },
  "detailsId": "syndicate-medallion"
}
```

## Oil (itemoverview)

**Status:** ✅ Working
**Items Count:** 16
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Oil`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      -2.66,
      -3.19,
      -2.64,
      -2.65,
      -3.21,
      -2.35
    ],
    "totalChange": -2.35
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -2.66,
      -3.19,
      -2.64,
      -2.65,
      -3.21,
      -2.35
    ],
    "totalChange": -2.35
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 593.89,
  "exaltedValue": 24.48,
  "divineValue": 4.44,
  "count": 121,
  "detailsId": "tainted-oil",
  "tradeInfo": [],
  "listingCount": 252
}
```

## Incubator (itemoverview)

**Status:** ✅ Working
**Items Count:** 25
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Incubator`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      8,
      0,
      0,
      22.8,
      60,
      100
    ],
    "totalChange": 100
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      8,
      0,
      0,
      22.8,
      60,
      100
    ],
    "totalChange": 100
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Adds an incubated Currency item to an equippable item\nItem drops after killing (3458-4230) monsters",
      "optional": false
    }
  ],
  "flavourText": "",
  "chaosValue": 10.00,
  "exaltedValue": 0.41,
  "divineValue": 0.07,
  "count": 399,
  "detailsId": "ornate-incubator",
  "tradeInfo": [],
  "listingCount": 24179
}
```

## Scarab (itemoverview)

**Status:** ✅ Working
**Items Count:** 109
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Scarab`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `stackSize` | number | No | Field specific to Scarab endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 114030,
  "name": "Horned Scarab of Awakening",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvU2NhcmFicy9TdXBlclNjYXJhYjQiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/10856e6528/SuperScarab4.png",
  "baseType": "Horned Scarab of Awakening",
  "stackSize": 20,
  "itemClass": 0,
  "sparkline": {
    "data": [
      0,
      -5.74,
      -6.12,
      -5.79,
      -1.66,
      -1.67,
      -1.65
    ],
    "totalChange": -1.65
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -5.74,
      -6.12,
      -5.79,
      -1.66,
      -1.67,
      -1.65
    ],
    "totalChange": -1.65
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "You can select one Imbued crafting option on the Map Device",
      "optional": false
    }
  ],
  "flavourText": "The Atlas can be anything you want... and everything you want.",
  "chaosValue": 294.40,
  "exaltedValue": 12.17,
  "divineValue": 2.20,
  "count": 398,
  "detailsId": "horned-scarab-of-awakening",
  "tradeInfo": [],
  "listingCount": 1275
}
```

## Fossil (itemoverview)

**Status:** ✅ Working
**Items Count:** 25
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Fossil`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      -2.00,
      -8.21,
      -8.05,
      -8.22,
      -14.78,
      -14.70
    ],
    "totalChange": -14.70
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -2.00,
      -8.21,
      -8.05,
      -8.22,
      -14.78,
      -14.70
    ],
    "totalChange": -14.70
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Has an Abyssal socket",
      "optional": false
    }
  ],
  "flavourText": "",
  "chaosValue": 174.08,
  "exaltedValue": 7.18,
  "divineValue": 1.30,
  "count": 239,
  "detailsId": "hollow-fossil",
  "tradeInfo": [],
  "listingCount": 467
}
```

## Resonator (itemoverview)

**Status:** ✅ Working
**Items Count:** 4
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Resonator`

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
| `lowConfidenceSparkline` | object | Yes | Price trend data with low confidence indicators |
| `name` | string | Yes | Display name of the item |
| `sparkline` | object | Yes | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ],
    "totalChange": 0
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 75.00,
  "exaltedValue": 3.09,
  "divineValue": 0.56,
  "count": 398,
  "detailsId": "prime-chaotic-resonator",
  "tradeInfo": [],
  "listingCount": 2361
}
```

## Essence (itemoverview)

**Status:** ✅ Working
**Items Count:** 105
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Essence`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `mapTier` | number | No | Field specific to Essence endpoint |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      -0.35,
      -0.79,
      -1.41,
      -0.86,
      -0.79,
      -0.79
    ],
    "totalChange": -0.79
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.35,
      -0.79,
      -1.41,
      -0.86,
      -0.79,
      -0.79
    ],
    "totalChange": -0.79
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
  "flavourText": "",
  "chaosValue": 30.00,
  "exaltedValue": 1.24,
  "divineValue": 0.22,
  "count": 267,
  "detailsId": "essence-of-horror",
  "tradeInfo": [],
  "listingCount": 689
}
```

## DivinationCard (itemoverview)

**Status:** ✅ Working
**Items Count:** 445
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=DivinationCard`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `stackSize` | number | No | Field specific to DivinationCard endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 636,
  "name": "House of Mirrors",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvRGl2aW5hdGlvbi9JbnZlbnRvcnlJY29uIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/f34bf8cbb5/InventoryIcon.png",
  "baseType": "House of Mirrors",
  "stackSize": 9,
  "artFilename": "HouseOfMirrors",
  "itemClass": 6,
  "sparkline": {
    "data": [
      0,
      0.45,
      -2.44,
      24.79,
      22.73,
      18.80,
      18.08
    ],
    "totalChange": 18.08
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      0.45,
      -2.44,
      24.79,
      22.73,
      18.80,
      18.08
    ],
    "totalChange": 18.08
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "<currencyitem>{Mirror of Kalandra}",
      "optional": false
    }
  ],
  "flavourText": "What do you see in the mirror?",
  "chaosValue": 27968.38,
  "exaltedValue": 1156.20,
  "divineValue": 209.00,
  "count": 119,
  "detailsId": "house-of-mirrors",
  "tradeInfo": [],
  "listingCount": 168
}
```

## SkillGem (itemoverview)

**Status:** ✅ Working
**Items Count:** 7059
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=SkillGem`

### Field Schema

| Field Name | Data Type | Nullable | Description |
|------------|-----------|----------|-------------|
| `baseType` | string | No | Base item type name |
| `chaosValue` | number | No | Current market value in Chaos Orbs |
| `corrupted` | boolean | No | Field specific to SkillGem endpoint |
| `count` | number | No | Number of items available in the market |
| `detailsId` | string | No | Unique identifier for detailed item information |
| `divineValue` | number | No | Current market value in Divine Orbs |
| `exaltedValue` | number | No | Current market value in Exalted Orbs |
| `explicitModifiers` | array | No | Array of explicit item modifiers |
| `flavourText` | string | No | Lore text associated with the item |
| `gemLevel` | number | No | Field specific to SkillGem endpoint |
| `gemQuality` | number | No | Field specific to SkillGem endpoint |
| `icon` | string | No | URL to the item's icon image |
| `id` | number | No | Unique identifier for the item |
| `implicitModifiers` | array | No | Array of implicit item modifiers |
| `itemClass` | number | No | Numeric identifier for the item class category |
| `levelRequired` | number | No | Minimum character level required to use the item |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to SkillGem endpoint |

### Sample Response

```json
{
  "id": 21098,
  "name": "Purifying Flame",
  "icon": "https://web.poecdn.com/gen/image/WzMwLDE0LHsiZiI6IjJESXRlbXMvR2Vtcy9QdXJpZnlpbmdGbGFtZSIsInciOjEsImgiOjEsInNjYWxlIjoxfV0/e933be7d7c/PurifyingFlame.png",
  "levelRequired": 72,
  "baseType": "Purifying Flame",
  "variant": "21/23c",
  "itemClass": 4,
  "sparkline": {
    "data": [],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      null,
      null,
      null,
      null,
      null,
      null,
      0
    ],
    "totalChange": 0
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Deals 1487 to 2230 Physical Damage",
      "optional": false
    },
    {
      "text": "Base duration is 4 seconds",
      "optional": false
    },
    {
      "text": "50% of Physical Damage Converted to Fire Damage",
      "optional": false
    },
    {
      "text": "+0.5 metres to radius",
      "optional": false
    },
    {
      "text": "+1 metre to radius of Consecrated Ground",
      "optional": false
    },
    {
      "text": "Shockwave deals 25% less Damage",
      "optional": false
    }
  ],
  "flavourText": "",
  "corrupted": true,
  "gemLevel": 21,
  "gemQuality": 23,
  "chaosValue": 1152759.33,
  "exaltedValue": 47654.37,
  "divineValue": 8614.25,
  "count": 2,
  "detailsId": "purifying-flame-21-23c",
  "tradeInfo": [],
  "listingCount": 8
}
```

## BaseType (itemoverview)

**Status:** ✅ Working
**Items Count:** 22043
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=BaseType`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | Yes | Field specific to BaseType endpoint |

### Sample Response

```json
{
  "id": 64477,
  "name": "Zealot Gloves",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQXJtb3Vycy9HbG92ZXMvR2xvdmVzU3RySW50MiIsInciOjIsImgiOjIsInNjYWxlIjoxfV0/f09ae395f5/GlovesStrInt2.png",
  "levelRequired": 86,
  "baseType": "Zealot Gloves",
  "variant": "Warlord/Hunter",
  "itemClass": 2,
  "sparkline": {
    "data": [],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.02,
      0.91,
      2.57,
      2.36,
      2.12,
      2.15
    ],
    "totalChange": 2.15
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "itemType": "Gloves",
  "chaosValue": 831129.05,
  "exaltedValue": 34259.24,
  "divineValue": 6206.62,
  "count": 1,
  "detailsId": "zealot-gloves-86-warlord-hunter",
  "tradeInfo": [],
  "listingCount": 1
}
```

## HelmetEnchant (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=HelmetEnchant`

## UniqueMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 82
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueMap`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `mapTier` | number | No | Field specific to UniqueMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 42559,
  "name": "Infused Beachhead",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9IYXJiaW5nZXJVYmVyIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/91398360e4/HarbingerUber.png",
  "mapTier": 16,
  "baseType": "Harbinger Map",
  "itemClass": 3,
  "sparkline": {
    "data": [
      0,
      -1.18,
      -1.65,
      -1.48,
      -1.66,
      -1.67,
      -1.58
    ],
    "totalChange": -1.58
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -1.18,
      -1.65,
      -1.48,
      -1.66,
      -1.67,
      -1.58
    ],
    "totalChange": -1.58
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "<<HBGAa>><<HBG01>><<HBGAf>><<HBG02>><<HBGAm>><<HBG03>><<HBGAo>>\n<<HBG02>><<HBGAt>><<HBG03>><<HBGAy>>",
  "chaosValue": 133.91,
  "exaltedValue": 5.52,
  "divineValue": 1.00,
  "count": 42,
  "detailsId": "infused-beachhead-t16",
  "tradeInfo": [],
  "listingCount": 134
}
```

## Map (itemoverview)

**Status:** ✅ Working
**Items Count:** 372
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Map`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `mapTier` | number | No | Field specific to Map endpoint |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to Map endpoint |

### Sample Response

```json
{
  "id": 124914,
  "name": "Sanctuary Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9VYmVyUmVsaWNDaGFtYmVycyIsInciOjEsImgiOjEsInNjYWxlIjoxLCJtbiI6MjIsIm10IjoxN31d/ed52107b98/UberRelicChambers.png",
  "mapTier": 17,
  "baseType": "Sanctuary Map",
  "variant": ", Gen-22",
  "itemClass": 2,
  "sparkline": {
    "data": [
      0,
      -6.44,
      -2.69,
      -5.78,
      -11.01,
      -6.28,
      51.11
    ],
    "totalChange": 51.11
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -6.44,
      -2.69,
      -5.78,
      -11.01,
      -6.28,
      51.11
    ],
    "totalChange": 51.11
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 72.17,
  "exaltedValue": 2.97,
  "divineValue": 0.54,
  "count": 399,
  "detailsId": "sanctuary-map-t17-gen-22",
  "tradeInfo": [],
  "listingCount": 68310
}
```

## UniqueJewel (itemoverview)

**Status:** ✅ Working
**Items Count:** 110
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueJewel`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 40773,
  "name": "Voices",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvSmV3ZWxzL1VuaXF1ZUpld2VsQmFzZTMiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/314c9905c8/UniqueJewelBase3.png",
  "baseType": "Large Cluster Jewel",
  "itemClass": 3,
  "sparkline": {
    "data": [
      0,
      -0.02,
      0.91,
      2.57,
      2.36,
      2.13,
      2.15
    ],
    "totalChange": 2.15
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.02,
      0.91,
      2.57,
      2.36,
      2.13,
      2.15
    ],
    "totalChange": 2.15
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "Only a madman would ignore a god's instructions.",
  "chaosValue": 182848.39,
  "exaltedValue": 7537.03,
  "divineValue": 1365.46,
  "count": 100,
  "detailsId": "voices-large-cluster-jewel",
  "tradeInfo": [],
  "listingCount": 151
}
```

## UniqueFlask (itemoverview)

**Status:** ✅ Working
**Items Count:** 41
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueFlask`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 99289,
  "name": "Dying Sun",
  "icon": "https://web.poecdn.com/gen/image/WzksMTQseyJmIjoiMkRJdGVtcy9GbGFza3MvU2hhcGVyc0ZsYXNrIiwidyI6MSwiaCI6Miwic2NhbGUiOjEsImxldmVsIjoxLCJmaSI6dHJ1ZSwicmVsaWMiOjB9XQ/ef28263899/ShapersFlask.png",
  "levelRequired": 68,
  "baseType": "Ruby Flask",
  "itemClass": 9,
  "sparkline": {
    "data": [],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      2.08,
      236.46,
      2445.04,
      2441.05,
      2440.67,
      2443.14
    ],
    "totalChange": 2443.14
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "(125-150)% increased Charges per use",
      "optional": false
    },
    {
      "text": "(40-60)% less Duration",
      "optional": false
    },
    {
      "text": "(10-20)% increased Area of Effect during Effect",
      "optional": false
    },
    {
      "text": "Skills fire 2 additional Projectiles during Effect",
      "optional": false
    }
  ],
  "flavourText": "All things must die.\nWhether you burn out or explode is up to you.",
  "chaosValue": 66955.00,
  "exaltedValue": 2759.89,
  "divineValue": 500.00,
  "count": 1,
  "detailsId": "dying-sun-relic",
  "tradeInfo": [],
  "listingCount": 3
}
```

## UniqueWeapon (itemoverview)

**Status:** ✅ Working
**Items Count:** 486
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueWeapon`

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
| `links` | number | Yes | Number of linked sockets (for socketable items) |
| `listingCount` | number | No | Number of active trade listings |
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 99590,
  "name": "Starforge",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvV2VhcG9ucy9Ud29IYW5kV2VhcG9ucy9Ud29IYW5kU3dvcmRzL1N0YXJmb3JnZSIsInciOjIsImgiOjQsInNjYWxlIjoxLCJyZWxpYyI6MH1d/1a41d46a59/Starforge.png",
  "levelRequired": 67,
  "baseType": "Infernal Sword",
  "links": 6,
  "itemClass": 9,
  "sparkline": {
    "data": [],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.02,
      0.91,
      2.57,
      -17.85,
      -17.86,
      -17.79
    ],
    "totalChange": -17.79
  },
  "implicitModifiers": [
    {
      "text": "30% increased Global Physical Damage",
      "optional": false
    }
  ],
  "explicitModifiers": [
    {
      "text": "449% increased Physical Damage",
      "optional": false
    },
    {
      "text": "8% increased Attack Speed",
      "optional": false
    },
    {
      "text": "+100 to maximum Life",
      "optional": false
    },
    {
      "text": "Your Physical Damage can Shock",
      "optional": false
    },
    {
      "text": "20% increased Area of Effect for Attacks",
      "optional": false
    },
    {
      "text": "Deal no Elemental Damage",
      "optional": false
    }
  ],
  "flavourText": "The end is written into the beginning.",
  "itemType": "Two Handed Sword",
  "chaosValue": 133776.09,
  "exaltedValue": 5514.27,
  "divineValue": 999.00,
  "count": 1,
  "detailsId": "starforge-infernal-sword-relic-6l",
  "tradeInfo": [],
  "listingCount": 1
}
```

## UniqueArmour (itemoverview)

**Status:** ✅ Working
**Items Count:** 686
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueArmour`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      -1.06,
      -1.43,
      -0.49,
      -0.62,
      -0.63,
      -0.61
    ],
    "totalChange": -0.61
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -1.06,
      -1.43,
      -0.49,
      -0.62,
      -0.63,
      -0.61
    ],
    "totalChange": -0.61
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
  "flavourText": "The priests found the Great Shield the night it fell to Middengard,\nbut it was the smiths who delved into the secrets it held.",
  "itemType": "Shield",
  "chaosValue": 16058.40,
  "exaltedValue": 663.84,
  "divineValue": 120.00,
  "count": 272,
  "detailsId": "svalinn-girded-tower-shield",
  "tradeInfo": [],
  "listingCount": 553
}
```

## UniqueAccessory (itemoverview)

**Status:** ✅ Working
**Items Count:** 268
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueAccessory`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
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
  "sparkline": {
    "data": [
      0,
      2.22,
      6.52,
      8.08,
      5.41,
      9.14,
      9.37
    ],
    "totalChange": 9.37
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      2.22,
      6.52,
      8.08,
      5.41,
      9.14,
      9.37
    ],
    "totalChange": 9.37
  },
  "implicitModifiers": [
    {
      "text": "+(17-27)% to Chaos Resistance",
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
  "flavourText": "Innocence rose to godhood not on inspired faith,\nbut on the vilification and hatred of another.",
  "itemType": "Ring",
  "chaosValue": 213559.07,
  "exaltedValue": 8828.40,
  "divineValue": 1595.87,
  "count": 28,
  "detailsId": "original-sin-amethyst-ring",
  "tradeInfo": [],
  "listingCount": 50
}
```

## Beast (itemoverview)

**Status:** ✅ Working
**Items Count:** 203
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Beast`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 121387,
  "name": "Black Mórrigan",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvQmVzdGlhcnlPcmJGdWxsIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/3214b44360/BestiaryOrbFull.png",
  "baseType": "Goliaths|Unnaturals|The Wilds",
  "itemClass": 2,
  "sparkline": {
    "data": [
      0,
      0.36,
      1.17,
      1.18,
      1.16,
      1.15,
      -2.13
    ],
    "totalChange": -2.13
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      0.36,
      1.17,
      1.18,
      1.16,
      1.15,
      -2.13
    ],
    "totalChange": -2.13
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 388.34,
  "exaltedValue": 16.01,
  "divineValue": 2.90,
  "count": 399,
  "detailsId": "black-morrigan",
  "tradeInfo": [],
  "listingCount": 6217
}
```

## Prophecy (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Prophecy`

## Watchstone (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Watchstone`

## Vial (itemoverview)

**Status:** ✅ Working
**Items Count:** 9
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Vial`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `stackSize` | number | No | Field specific to Vial endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 39826,
  "name": "Vial of the Ghost",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvVmlhbFNvdWxDYXRjaGVyIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/41cbc9ed1d/VialSoulCatcher.png",
  "baseType": "Vial of the Ghost",
  "stackSize": 10,
  "itemClass": 5,
  "sparkline": {
    "data": [
      null,
      null,
      null,
      null,
      null,
      null,
      0
    ],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.61,
      -1.01,
      -0.81,
      4.81,
      -1.02,
      10.72
    ],
    "totalChange": 10.72
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "With great tragedy and power,\nthe dead are netted in anguish.",
  "chaosValue": 508.86,
  "exaltedValue": 20.98,
  "divineValue": 3.80,
  "count": 5,
  "detailsId": "vial-of-the-ghost",
  "tradeInfo": [],
  "listingCount": 17
}
```

## DeliriumOrb (itemoverview)

**Status:** ✅ Working
**Items Count:** 17
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=DeliriumOrb`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `stackSize` | number | No | Field specific to DeliriumOrb endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 40904,
  "name": "Fragmented Delirium Orb",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvRGVsaXJpdW0vRGVsaXJpdW1PcmJGcmFnbWVudHMiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/8f24162984/DeliriumOrbFragments.png",
  "baseType": "Fragmented Delirium Orb",
  "stackSize": 10,
  "itemClass": 5,
  "sparkline": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      0,
      0,
      0,
      0,
      0,
      0
    ],
    "totalChange": 0
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Modifies a Map item adding layers of Delirium with the Fragments reward type",
      "optional": false
    }
  ],
  "flavourText": "",
  "chaosValue": 20.00,
  "exaltedValue": 0.82,
  "divineValue": 0.15,
  "count": 160,
  "detailsId": "fragmented-delirium-orb",
  "tradeInfo": [],
  "listingCount": 582
}
```

## Omen (itemoverview)

**Status:** ✅ Working
**Items Count:** 12
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Omen`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 107341,
  "name": "Omen of Fortune",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvQXptZXJpL1Zvb2Rvb09tZW5zMVB1cnBsZSIsInciOjEsImgiOjEsInNjYWxlIjoxfV0/68c64f2338/VoodooOmens1Purple.png",
  "baseType": "Omen of Fortune",
  "itemClass": 5,
  "sparkline": {
    "data": [
      0,
      -5.13,
      -6.58,
      -5.90,
      -1.96,
      -1.68,
      7.02
    ],
    "totalChange": 7.02
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -5.13,
      -6.58,
      -5.90,
      -1.96,
      -1.68,
      7.02
    ],
    "totalChange": 7.02
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Will be Consumed when you use an Orb of Chance\non an item which can become Unique to ensure it does so",
      "optional": false
    }
  ],
  "flavourText": "",
  "chaosValue": 5825.08,
  "exaltedValue": 240.11,
  "divineValue": 43.50,
  "count": 19,
  "detailsId": "omen-of-fortune",
  "tradeInfo": [],
  "listingCount": 42
}
```

## UniqueRelic (itemoverview)

**Status:** ✅ Working
**Items Count:** 12
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=UniqueRelic`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 107858,
  "name": "The Original Scripture",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvUmVsaWNzL1JlbGljVW5pcXVlNHgxIiwidyI6NCwiaCI6MSwic2NhbGUiOjF9XQ/e6e8bfb6e4/RelicUnique4x1.png",
  "baseType": "Papyrus Relic",
  "itemClass": 3,
  "sparkline": {
    "data": [
      0,
      1.30,
      0.66,
      4.47,
      4.28,
      3.93,
      3.64
    ],
    "totalChange": 3.64
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      1.30,
      0.66,
      4.47,
      4.28,
      3.93,
      3.64
    ],
    "totalChange": 3.64
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
  "flavourText": "\"It's all here. The lie at the core of my faith. Maxarius was not the first chosen of Innocence. Maxarius was Innocence himself. A charlatan, a liar, and a power-seeker.\" - Lycia, the Heretic",
  "chaosValue": 179342.23,
  "exaltedValue": 7392.51,
  "divineValue": 1339.27,
  "count": 7,
  "detailsId": "the-original-scripture-relic",
  "tradeInfo": [],
  "listingCount": 11
}
```

## ClusterJewel (itemoverview)

**Status:** ✅ Working
**Items Count:** 850
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=ClusterJewel`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to ClusterJewel endpoint |

### Sample Response

```json
{
  "id": 63569,
  "name": "12% increased Fire Damage",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvSmV3ZWxzL05ld0dlbUJhc2UzIiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/db35e60885/NewGemBase3.png",
  "levelRequired": 50,
  "baseType": "Large Cluster Jewel",
  "variant": "8 passives",
  "itemClass": 1,
  "sparkline": {
    "data": [
      0,
      -4.29,
      -8.51,
      -20.8,
      -18.07,
      -34.26,
      -2.98
    ],
    "totalChange": -2.98
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -4.29,
      -8.51,
      -20.8,
      -18.07,
      -34.26,
      -2.98
    ],
    "totalChange": -2.98
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 950.76,
  "exaltedValue": 39.19,
  "divineValue": 7.10,
  "count": 24,
  "detailsId": "12-increased-fire-damage-8-passives-50",
  "tradeInfo": [
    {
      "mod": "enchant.stat_3948993189",
      "min": 0,
      "max": 0,
      "option": "13"
    },
    {
      "mod": "enchant.stat_3086156145",
      "min": 8,
      "max": 8
    }
  ],
  "listingCount": 103
}
```

## BlightedMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 371
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=BlightedMap`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `mapTier` | number | No | Field specific to BlightedMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to BlightedMap endpoint |

### Sample Response

```json
{
  "id": 125726,
  "name": "Blighted Frozen Cabins Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9Gcm96ZW5DYWJpbnMiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MSwibW4iOjIyLCJtdCI6MTYsIm1iIjp0cnVlfV0/ae202932ce/FrozenCabins.png",
  "mapTier": 16,
  "baseType": "Blighted Frozen Cabins Map",
  "variant": ", Gen-22",
  "itemClass": 0,
  "sparkline": {
    "data": [],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -1.26,
      -1.65,
      -1.48,
      -1.65,
      -1.66,
      -1.57
    ],
    "totalChange": -1.57
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 401.73,
  "exaltedValue": 16.56,
  "divineValue": 3.00,
  "count": 1,
  "detailsId": "blighted-frozen-cabins-map-t16-gen-22",
  "tradeInfo": [],
  "listingCount": 9
}
```

## BlightRavagedMap (itemoverview)

**Status:** ✅ Working
**Items Count:** 132
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=BlightRavagedMap`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `mapTier` | number | No | Field specific to BlightRavagedMap endpoint |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `tradeInfo` | array | No | Additional trading information and metadata |
| `variant` | string | No | Field specific to BlightRavagedMap endpoint |

### Sample Response

```json
{
  "id": 125731,
  "name": "Blight-ravaged Museum Map",
  "icon": "https://web.poecdn.com/gen/image/WzI4LDE0LHsiZiI6IjJESXRlbXMvTWFwcy9BdGxhczJNYXBzL05ldy9NdXNldW0iLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MSwibW4iOjIyLCJtdCI6MTUsIm11YiI6dHJ1ZX1d/dac8ed1913/Museum.png",
  "mapTier": 15,
  "baseType": "Blight-ravaged Museum Map",
  "variant": ", Gen-22",
  "itemClass": 0,
  "sparkline": {
    "data": [
      0,
      0,
      null,
      null,
      null,
      null,
      null
    ],
    "totalChange": 0
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      0,
      -16.28,
      -16.28,
      -20.93,
      -2.33,
      14.86
    ],
    "totalChange": 14.86
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "",
  "chaosValue": 49.39,
  "exaltedValue": 2.04,
  "divineValue": 0.37,
  "count": 2,
  "detailsId": "blight-ravaged-museum-map-t15-gen-22",
  "tradeInfo": [],
  "listingCount": 24
}
```

## Invitation (itemoverview)

**Status:** ✅ Working
**Items Count:** 4
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Invitation`

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
| `lowConfidenceSparkline` | object | Yes | Price trend data with low confidence indicators |
| `name` | string | Yes | Display name of the item |
| `sparkline` | object | Yes | Price trend data over time |
| `tradeInfo` | array | Yes | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 93816,
  "name": "Screaming Invitation",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvUXVlc3RJdGVtcy9UYW5nbGVkT3JiUXVlc3Q1IiwidyI6MSwiaCI6MSwic2NhbGUiOjF9XQ/75de691c2b/TangledOrbQuest5.png",
  "baseType": "Screaming Invitation",
  "itemClass": 0,
  "sparkline": {
    "data": [
      0,
      3.18,
      23.71,
      15.08,
      -4.34,
      13.15,
      1.03
    ],
    "totalChange": 1.03
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      3.18,
      23.71,
      15.08,
      -4.34,
      13.15,
      1.03
    ],
    "totalChange": 1.03
  },
  "implicitModifiers": [],
  "explicitModifiers": [],
  "flavourText": "From the heart of the Tangle, the Eater of Worlds\nreaches out for control of the Atlas.",
  "chaosValue": 117.50,
  "exaltedValue": 4.84,
  "divineValue": 0.88,
  "count": 399,
  "detailsId": "screaming-invitation",
  "tradeInfo": [],
  "listingCount": 7336
}
```

## Memory (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Memory`

## Coffin (itemoverview)

**Status:** ❌ Deprecated/Empty
**Items Count:** 0
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=Coffin`

## AllflameEmber (itemoverview)

**Status:** ✅ Working
**Items Count:** 8
**URL:** `https://poe.ninja/api/data/itemoverview?league=Mercenaries&type=AllflameEmber`

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
| `lowConfidenceSparkline` | object | No | Price trend data with low confidence indicators |
| `name` | string | No | Display name of the item |
| `sparkline` | object | No | Price trend data over time |
| `stackSize` | number | No | Field specific to AllflameEmber endpoint |
| `tradeFilter` | object | No | Field specific to AllflameEmber endpoint |
| `tradeInfo` | array | No | Additional trading information and metadata |

### Sample Response

```json
{
  "id": 125020,
  "name": "Allflame Ember of the Gilded",
  "icon": "https://web.poecdn.com/gen/image/WzI1LDE0LHsiZiI6IjJESXRlbXMvQ3VycmVuY3kvTmVjcm9wb2xpcy9BbGxmbGFtZUdvbGQiLCJ3IjoxLCJoIjoxLCJzY2FsZSI6MX1d/dd5c297fac/AllflameGold.png",
  "baseType": "Allflame Ember of the Gilded",
  "stackSize": 20,
  "itemClass": 0,
  "sparkline": {
    "data": [
      0,
      -0.40,
      -1.67,
      -1.50,
      -1.68,
      -4.96,
      -8.13
    ],
    "totalChange": -8.13
  },
  "lowConfidenceSparkline": {
    "data": [
      0,
      -0.40,
      -1.67,
      -1.50,
      -1.68,
      -4.96,
      -8.13
    ],
    "totalChange": -8.13
  },
  "implicitModifiers": [],
  "explicitModifiers": [
    {
      "text": "Substitutes Monster Packs in Area\nPack Monster Equipment Drops are converted to Gold",
      "optional": false
    }
  ],
  "flavourText": "",
  "chaosValue": 375.06,
  "exaltedValue": 15.45,
  "divineValue": 2.80,
  "count": 399,
  "detailsId": "allflame-ember-of-the-gilded-(0-0)",
  "tradeInfo": [],
  "tradeFilter": {
    "query": {
      "type": {
        "option": "Allflame Ember of the Gilded"
      },
      "filters": {
        "misc_filters": {
          "filters": {
            "ilvl": {
              "min": 0,
              "max": 0
            }
          }
        }
      }
    }
  },
  "listingCount": 1893
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

