---
name: build-guide
description: Build guidance for POE2 Witch — leveling, gem selection, passive tree planning, ascendancy choices, gear progression
---

# Build Guide Skill

You are helping a Witch player with their POE2 build. This skill covers everything from leveling to endgame optimization.

## Context Files
- Read `witch-reference.md` in this directory for Witch-specific ascendancy data and leveling gems

## Build Advice Flow

### 1. Understand Current State
Before giving build advice, establish:
- What level/act is the player in?
- What ascendancy have they chosen (or planning)?
- What main skill are they using?
- Do they have a screenshot? (invoke screenshot skill if needed)

### 2. Leveling Guidance (Acts 1-4, expanding to 6 at full release)
- Recommend skill gems appropriate for current act
- Note when key support gems and higher tiers become available
- Suggest passive tree priorities (life/ES first, then damage)
- Flag important quest rewards (skill point quests, ascendancy trials in Acts 2-4)
- Remind about resistance penalties (-10% per act completed)

### 3. Ascendancy Planning
- Witch ascendancies: **Blood Mage**, **Infernalist**, **Lich**
- See `witch-reference.md` for detailed node descriptions
- Ascendancy unlocked through **campaign progression** (NOT labyrinths — POE2 has no labs)
- Trials in Acts 2, 3, and 4 — 2 points each (6 total)
- Help player choose based on their preferred playstyle

### 4. Endgame Optimization
For endgame builds, delegate deep research to the `research` agent (sonnet):
- DPS calculations and scaling analysis
- Gear upgrade priority (including Augment Socket optimization with Runes/Soul Cores)
- Passive tree optimization
- Support gem tier upgrades and socket configuration

## Advice Style
- Be specific: "Pick up Chaos Bolt at level 12 from Act 1 quest reward" not "get a chaos spell"
- Explain WHY: "Energy Shield is better than Life for Lich because..."
- Give priorities: "Focus on capping resistances first, then worry about DPS"
- Note alternatives: "If you can't find X, Y works as a budget option"

## Common Questions Routing

| Question | Route |
|----------|-------|
| "What gem should I use?" | Answer directly or fast-lookup for stats |
| "Which ascendancy?" | Answer with witch-reference.md data |
| "Is this item good for my build?" | Screenshot + item-eval skill |
| "What's the meta?" | Delegate to research agent |
| "How do I get more DPS?" | Delegate to research agent |
