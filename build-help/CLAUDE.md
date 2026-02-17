# POE2 Build Help Plugin

## Player Profile
- **Game**: Path of Exile 2 (Early Access)
- **Class**: Witch
- **Platform**: Windows (game) + WSL (Claude Code)

## Screenshot Path
All POE2 screenshots are saved to:
- **Windows**: `C:\Users\ryanl\Desktop\poe2\`
- **WSL**: `/mnt/c/Users/ryanl/Desktop/poe2/`

Use the helper script `scripts/latest-screenshots.sh` to list recent screenshots sorted by modification time.

## Model Routing

Route tasks to the cheapest model that can handle them well:

| Task Type | Agent | Model | Why |
|-----------|-------|-------|-----|
| Screenshot reading | `screenshot-reader` | haiku | Fast image OCR, no deep reasoning needed |
| Quick data lookup | `fast-lookup` | haiku | Simple fact retrieval from MCP tools or web |
| Build research | `research` | sonnet | Multi-source synthesis, comparing options |
| Complex advice | main thread | opus | Orchestration, nuanced decisions, planning |

### Routing Rules
- If the user asks "what does X do?" or "what is Y?" → `fast-lookup` (haiku)
- If the user shares a screenshot or says "look at my screen" → `screenshot-reader` (haiku)
- If the user asks "what build should I run?" or "compare X vs Y" → `research` (sonnet)
- If the user needs step-by-step planning or multi-turn guidance → keep in main thread (opus)

## MCP Tools Available

When `poe2-mcp` is configured, these tool categories are available:
- **Build analysis**: analyze builds, validate gem links, check passive trees
- **Gem data**: look up gem info, support gems, skill interactions
- **Item mods**: evaluate item affixes, crafting bases, mod tiers
- **Passive tree**: path planning, notable allocation, ascendancy choices
- **Path of Building**: import/export builds, DPS calculations

Always try MCP tools first before falling back to web search.

## Data Strategy

POE2 is in early access — game data changes frequently. Follow this priority:
1. **MCP tools** (poe2-mcp) — most structured, fastest
2. **poe.ninja API** — economy data, build stats
3. **Web search** — wiki, Reddit, forum posts for latest info
4. **Bundled reference** (`witch-reference.md`) — only for stable ascendancy/gem data, update per major patch

Never assume cached/bundled data is current. Always note when data might be outdated.

## Conventions
- When showing build advice, always specify the patch/version context if known
- Use game terminology consistently (e.g., "skill gems" not "abilities", "passive tree" not "skill tree")
- When evaluating items, explain WHY mods are good/bad for the user's build, not just tier ratings
- For quest help, give concise directions — the user is actively playing
