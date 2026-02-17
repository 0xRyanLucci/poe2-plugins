---
name: plugin-context
description: Core context for the POE2 Build Help plugin — player profile, model routing, MCP tools, data strategy, and conventions. Always relevant when any POE2 topic is discussed.
---

# POE2 Build Help — Plugin Context

## Player Profile
- **Game**: Path of Exile 2 (Early Access, Patch 0.4.0 "The Last of the Druids")
- **Class**: Witch
- **Platform**: Windows (game) + WSL (Claude Code)

## Screenshot Path
All POE2 screenshots are saved to:
- **Windows**: `C:\Users\ryanl\Desktop\poe2\`
- **WSL**: `/mnt/c/Users/ryanl/Desktop/poe2/`

Use the helper script to list recent screenshots:
```bash
bash ${CLAUDE_PLUGIN_ROOT}/scripts/latest-screenshots.sh [count]
```

## Model Routing

Route tasks to the cheapest model that can handle them well:

| Task Type | Agent | Model | Why |
|-----------|-------|-------|-----|
| Screenshot reading | `screenshot-reader` | haiku | Fast image OCR, no deep reasoning needed |
| Quick data lookup | `fast-lookup` | haiku | Simple fact retrieval from MCP tools or web |
| Build research | `research` | sonnet | Multi-source synthesis, comparing options |
| Complex advice | main thread | opus | Orchestration, nuanced decisions, planning |

### Routing Rules
- "what does X do?" or "what is Y?" → `fast-lookup` (haiku)
- Screenshot or "look at my screen" → `screenshot-reader` (haiku)
- "what build should I run?" or "compare X vs Y" → `research` (sonnet)
- Step-by-step planning or multi-turn guidance → keep in main thread (opus)

## MCP Tools Available

The `poe2-mcp` server is configured at user level (`~/.claude/.mcp.json`), not in the plugin's `.mcp.json`. When connected, these 32 tools are available (all POE2-specific):
- **Build analysis**: `analyze_character`, `compare_to_top_players`, `validate_build_constraints`
- **Gem data**: `inspect_spell_gem`, `inspect_support_gem`, `validate_support_combination`, `list_all_spells`, `list_all_supports`
- **Item mods**: `inspect_mod`, `search_mods_by_stat`, `inspect_base_item`, `search_items`, `validate_item_mods`
- **Passive tree**: `analyze_passive_tree`, `inspect_keystone`, `inspect_passive_node`, `list_all_keystones`, `list_all_notables`
- **Path of Building**: `import_pob`, `export_pob`, `get_pob_code`
- **Trade**: `search_trade_items`, `setup_trade_auth` (requires POESESSID)
- **Knowledge**: `explain_mechanic`, `get_formula`, `health_check`

Always try MCP tools first before falling back to web search.

## Data Strategy

POE2 is in early access — game data changes frequently. Follow this priority:
1. **MCP tools** (poe2-mcp) — most structured, fastest
2. **poe.ninja API** (`/poe2/` paths) — economy data, build stats
3. **Web search** — wiki, Reddit, forum posts for latest info
4. **Bundled reference** (`witch-reference.md`) — only for stable ascendancy/gem data, update per major patch

Never assume cached/bundled data is current. Always note when data might be outdated.

## Conventions
- Always specify the patch/version context if known
- Use POE2 terminology (NOT POE1): "Waystones" not "maps", "augment sockets" not "socket links", "support gem tiers" not "gem levels"
- POE2 gems go in a dedicated interface, NOT in item sockets. Items have augment sockets for Runes/Soul Cores/Idols only.
- No labyrinths — ascendancy unlocked through campaign progression (Acts 2, 3, 4)
- When evaluating items, explain WHY mods are good/bad for the user's build
- For quest help, give concise directions — the user is actively playing
