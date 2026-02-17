---
name: poe2-research
description: Web research dispatch for POE2 data — fetches from APIs, wikis, and community sources. Background skill, not directly user-invoked.
---

# POE2 Research Skill

This skill handles fetching and synthesizing POE2 game data from external sources. It is used by other skills and agents, not invoked directly by users.

## When to Use This Skill
- Another skill needs fresh game data (gem stats, item mods, patch notes)
- The user asks something that requires checking multiple sources
- MCP tools don't have the needed data or are unavailable

## Research Dispatch

### For Quick Facts (delegate to fast-lookup agent, haiku)
- Single gem/skill stats
- Single mod tier lookup
- "What does X do?" questions
- Currency values

### For Deep Research (delegate to research agent, sonnet)
- Build comparisons and optimization
- Meta analysis across multiple builds
- Gear upgrade planning
- Leveling guides

## Source Priority
1. MCP tools (poe2-mcp) — structured data, fastest
2. poe.ninja API — economy, build statistics
3. POE2 Wiki — comprehensive game mechanics
4. Reddit/forums — community strategies, recent discoveries
5. YouTube/Twitch — build guide creators

## API Reference
See `sources.md` in this directory for all API endpoints and query patterns.

## Freshness Rules
- Economy data: refresh every session (prices change hourly)
- Build data: refresh weekly or after patches
- Game mechanics: generally stable, but verify after major patches
- Always note when data was last checked if sharing specific numbers
