# POE2 Data Sources & API Reference

## poe.ninja API (Economy & Build Data)

Base URL: `https://poe.ninja/api/data`

### Economy Endpoints
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

### Build Stats
| Endpoint | Description |
|----------|-------------|
| `/builds?league=<league>` | Top builds by class, ascendancy |

**League Names**: Check current league name at `https://poe.ninja` — it changes each league. Common pattern: `Settlers` or similar seasonal name. For POE2, may use `Standard` or current league name.

## POE2 Wiki

- **Base URL**: `https://www.poe2wiki.net/wiki/`
- **Gem pages**: `https://www.poe2wiki.net/wiki/<Gem_Name>` (underscores for spaces)
- **Mod pages**: `https://www.poe2wiki.net/wiki/Modifiers`
- **Quest pages**: `https://www.poe2wiki.net/wiki/<Quest_Name>`
- **Act guides**: `https://www.poe2wiki.net/wiki/Act_<N>`

## Official Trade Site

- **Base URL**: `https://www.pathofexile.com/trade2`
- Use for checking current item listings and prices
- Note: POE2 has a separate trade site from POE1

## Community Resources

### Reddit
- `https://www.reddit.com/r/pathofexile2/` — Main POE2 subreddit
- Search: `https://www.reddit.com/r/pathofexile2/search/?q=<query>&sort=new`

### Build Guide Creators (YouTube/Written)
- Search YouTube for: `poe2 witch <build type> guide`
- Popular creators often post updated guides after each patch

## MCP Tool Queries (poe2-mcp)

When poe2-mcp is available, prefer these over web fetches:

| Tool Category | Example Use |
|---------------|-------------|
| `get_gem_info` | Look up gem stats, tags, scaling |
| `analyze_build` | Evaluate a build's strengths/weaknesses |
| `get_passive_tree` | Check passive tree pathing |
| `validate_gem_links` | Verify gem-support compatibility |
| `get_item_mods` | Look up available mods for item bases |
| `health_check` | Verify MCP server is running |

## Query Patterns

### "What's the best X for Witch?"
1. Check poe.ninja builds filtered by Witch/ascendancy
2. Cross-reference with MCP `analyze_build` if available
3. Search Reddit for recent discussion

### "How much is X worth?"
1. Check poe.ninja currency/item overview
2. Check trade site for current listings
3. Note that prices fluctuate — give a range

### "How does X mechanic work?"
1. Check POE2 Wiki
2. If not found, search Reddit for explanations
3. Note if mechanic has changed recently (patch notes)
