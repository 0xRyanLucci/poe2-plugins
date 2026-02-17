# POE2 Build Help — Claude Code Plugin

A real-time gaming assistant for Path of Exile 2, designed for Witch class players. Analyzes screenshots, provides build guidance, helps with quests, evaluates items, and tracks the economy.

## Installation

```bash
# Install the plugin
claude --plugin /path/to/poe2-plugins/build-help

# Or add to your Claude Code config
```

### Prerequisites

1. **Screenshot folder**: Create `C:\Users\<you>\Desktop\poe2\` on Windows and save POE2 screenshots there
2. **poe2-mcp** (optional but recommended): `pip install poe2-mcp` for 32 game data tools

## Commands

| Command | Description |
|---------|-------------|
| `/build-help:ss [count]` | Grab and analyze latest screenshot(s) |
| `/build-help:build [question]` | Get build advice (leveling, ascendancy, gems, gear) |
| `/build-help:quest [name/act]` | Quest walkthrough help |
| `/build-help:lookup <term>` | Quick game data lookup |

## Skills (Auto-Loaded)

These activate automatically when the conversation topic matches:

- **screenshot** — POE2 screenshot analysis
- **build-guide** — Build planning and optimization
- **quest-help** — Campaign quest assistance
- **endgame** — Mapping, atlas, endgame systems
- **item-eval** — Item mod evaluation and crafting
- **economy** — Currency rates, pricing, trade
- **poe2-research** — Background research dispatch

## Model Routing

The plugin routes tasks to the cheapest capable model:

| Model | Used For |
|-------|----------|
| **Haiku** | Screenshot OCR, quick data lookups |
| **Sonnet** | Build research, multi-source synthesis |
| **Opus** | Complex advice, orchestration, planning |

## MCP Servers

The plugin can integrate with these POE2 MCP servers:

| Server | Tools | Install |
|--------|-------|---------|
| poe2-mcp | 32 (builds, gems, passives, items) | `pip install poe2-mcp` |
| poe2scout-mcp | 11 (economy, market, trading) | Clone from GitHub |
| pob-mcp | Path of Building integration | Clone from GitHub |

Configure in `build-help/.mcp.json`.

## Project Structure

```
build-help/
├── skills/          # Domain knowledge (auto-loaded by topic)
├── agents/          # Specialized workers (haiku/sonnet)
├── commands/        # User-invocable slash commands
├── hooks/           # Session lifecycle hooks
├── scripts/         # Helper shell scripts
├── .mcp.json        # MCP server configuration
└── CLAUDE.md        # Plugin context and conventions
```

## Development

This plugin is designed for POE2 Early Access. Game data changes frequently — the plugin uses a fetch-first strategy, querying live data from MCP tools, poe.ninja, and web sources rather than bundling static data.

The only bundled reference data is `witch-reference.md` which contains stable ascendancy info, updated per major patch.
