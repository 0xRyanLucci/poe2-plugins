---
name: lookup
description: Quick POE2 data lookup — gems, mods, mechanics, currency
disable-model-invocation: true
argument: "<term> - what to look up (gem name, mod, mechanic, currency)"
---

# /build-help:lookup — Quick Data Lookup

The user wants a fast answer about a specific POE2 game element.

## Steps

1. **Parse the query**: Identify what `{{ argument }}` is asking about:
   - Gem/skill name → gem stats, tags, scaling
   - Item mod → mod tiers, ranges, bases
   - Game mechanic → how it works
   - Currency item → what it does, vendor recipes
   - Unique item → stats, where it drops

2. **Delegate to fast-lookup agent** (haiku) for speed:
   ```
   Task(subagent_type: "general-purpose", model: "haiku", prompt: "POE2 quick lookup: {{ argument }}. Check MCP tools first if available, then poe2wiki.net, then web search. Give a concise answer (max 5 sentences) with key stats/numbers.")
   ```

3. **Return the result** to the user. If the lookup agent couldn't find data, fall back to the research agent (sonnet) for a deeper search.

## Examples

- `/build-help:lookup chaos bolt` → Gem stats, tags, base damage, scaling info
- `/build-help:lookup t1 life roll` → "+80-89 to Maximum Life, Prefix, ilvl 82+"
- `/build-help:lookup energy shield recharge` → Brief mechanic explanation
- `/build-help:lookup exalted orb` → What it does, approximate value
