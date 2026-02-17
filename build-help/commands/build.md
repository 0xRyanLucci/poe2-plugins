---
name: build
description: Get POE2 build advice — leveling, ascendancy, gems, passives, gear
disable-model-invocation: true
argument: "[question] - specific build question (optional, will prompt if empty)"
---

# /build-help:build — Build Advice

The user wants help with their POE2 Witch build.

## Steps

1. **Load context**: Read `skills/build-guide/witch-reference.md` for Witch-specific data.

2. **Understand the question**:
   - If `{{ argument }}` is provided, answer that specific question
   - If no argument, ask: "What do you need help with? (leveling, ascendancy choice, gem setup, passive tree, gear, or general build advice)"

3. **Route by complexity**:
   - **Simple questions** (gem choice, single node, quick tip): Answer directly using witch-reference data
   - **Medium questions** (ascendancy comparison, leveling path): Answer with reference data + fast-lookup agent for current stats
   - **Complex questions** (full build optimization, meta analysis, DPS scaling): Delegate to `research` agent (sonnet) via Task tool

4. **Format response**:
   - Always specify what level/act/ascendancy context you're assuming
   - Give concrete recommendations, not vague advice
   - Include alternatives when relevant
   - Note if advice is patch-dependent

## Example Interactions

**User**: `/build-help:build what ascendancy should I pick?`
→ Load witch-reference.md, compare Blood Mage vs Infernalist vs Lich, ask about playstyle preference

**User**: `/build-help:build best chaos spell for leveling`
→ Quick lookup: Chaos Bolt availability, scaling, support gem options

**User**: `/build-help:build how to optimize my endgame DPS`
→ Delegate to research agent: check poe.ninja top builds, analyze scaling options, gear upgrades
