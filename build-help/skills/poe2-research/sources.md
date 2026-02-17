# POE2 Data Sources & API Reference

## poe.ninja API (Economy & Build Data)

POE2 uses the `/poe2/` path on poe.ninja (separate from POE1).

### POE2-Specific Endpoints
| Endpoint | Description |
|----------|-------------|
| `https://poe.ninja/poe2/builds` | Top builds by class/ascendancy |
| `https://poe.ninja/poe2/api/data/index-state` | Snapshot versions for leagues |
| `https://poe.ninja/poe2/api/builds/{version}/character?account=X&name=Y` | Character data |
| `https://poe.ninja/poe2/builds/{league}/character/{account}/{character}` | Character profile |
| `https://poe.ninja/poe2/api/builds/pob/import?accountName=X&characterName=Y` | PoB export code |

### Economy Endpoints
Base URL: `https://poe.ninja/api/data`

| Endpoint | Description |
|----------|-------------|
| `/itemoverview?league=<league>&type=UniqueWeapon` | Unique weapon prices |
| `/itemoverview?league=<league>&type=UniqueArmour` | Unique armour prices |
| `/itemoverview?league=<league>&type=UniqueAccessory` | Unique accessory prices |
| `/itemoverview?league=<league>&type=UniqueFlask` | Unique flask prices |
| `/itemoverview?league=<league>&type=UniqueJewel` | Unique jewel prices |
| `/itemoverview?league=<league>&type=SkillGem` | Skill gem prices |
| `/currencyoverview?league=<league>&type=Currency` | Currency exchange rates |
| `/currencyoverview?league=<league>&type=Fragment` | Fragment prices |

**Current League**: "Fate of the Vaal" (patch 0.4.0). Check `https://poe.ninja/poe2/` for the current league name — it changes each patch.

## POE2 Wiki

- **Base URL**: `https://www.poe2wiki.net/wiki/`
- **Also**: `https://www.poewiki.net/wiki/poe2wiki:` (alternate wiki)
- **Gem pages**: `https://www.poe2wiki.net/wiki/<Gem_Name>` (underscores for spaces)
- **Mod pages**: `https://www.poe2wiki.net/wiki/Modifiers`
- **Quest pages**: `https://www.poe2wiki.net/wiki/<Quest_Name>`
- **Act guides**: `https://www.poe2wiki.net/wiki/Act_<N>`

## POE2 Database
- **poe2db.tw**: `https://poe2db.tw/us/` — comprehensive item/mod database

## Official Trade Site

- **Base URL**: `https://www.pathofexile.com/trade2` (POE2-specific, NOT /trade which is POE1)
- **API**: `https://www.pathofexile.com/api/trade2/search/poe2/<league>`
- **Fetch**: `https://www.pathofexile.com/api/trade2/fetch/<id_string>`
- Note: POE2 trade uses `"securable"` status filter (not `"online"` like POE1)

## Community Resources

### Reddit
- `https://www.reddit.com/r/pathofexile2/` — Main POE2 subreddit
- Search: `https://www.reddit.com/r/pathofexile2/search/?q=<query>&sort=new`

### Guide Sites
- **maxroll.gg**: `https://maxroll.gg/poe2/` — builds, guides, tools
- **mobalytics.gg**: `https://mobalytics.gg/poe-2/` — builds, tier lists
- **poe-vault.com**: `https://www.poe-vault.com/poe2/` — guides, league info

### Build Guide Creators (YouTube/Written)
- Search YouTube for: `poe2 witch <build type> guide 0.4`
- Popular creators often post updated guides after each patch

## MCP Tool Queries (poe2-mcp)

When poe2-mcp is available, prefer these over web fetches:

| Tool Category | Example Use |
|---------------|-------------|
| `inspect_spell_gem` | Look up spell gem stats, tags, scaling |
| `inspect_support_gem` | Support gem details and tier info |
| `analyze_character` | Evaluate a build's strengths/weaknesses |
| `analyze_passive_tree` | Check passive tree pathing |
| `validate_support_combination` | Verify gem-support compatibility |
| `inspect_mod` / `search_mods_by_stat` | Look up item mod tiers and ranges |
| `inspect_base_item` / `search_items` | Item base information |
| `import_pob` / `export_pob` | Path of Building integration |
| `compare_to_top_players` | Compare build to poe.ninja top players |
| `explain_mechanic` | Game mechanic explanations |
| `health_check` | Verify MCP server is running |

## Query Patterns

### "What's the best X for Witch?"
1. Check poe.ninja/poe2 builds filtered by Witch/ascendancy
2. Cross-reference with MCP `analyze_character` if available
3. Search Reddit for recent discussion

### "How much is X worth?"
1. Check poe.ninja currency/item overview
2. Check trade site for current listings (`/trade2`)
3. Note that prices fluctuate — give a range

### "How does X mechanic work?"
1. Try MCP `explain_mechanic` tool
2. Check POE2 Wiki
3. If not found, search Reddit for explanations
4. Note if mechanic has changed recently (patch notes)
