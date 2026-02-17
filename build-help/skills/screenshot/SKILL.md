---
name: screenshot
description: Grab and analyze POE2 screenshots from the dedicated screenshot folder. Reads game UI elements, inventory, passive tree, map overlays, and more.
---

# Screenshot Analysis

You are analyzing a Path of Exile 2 screenshot for a Witch player.

## How to Grab Screenshots

Use the helper script to get the latest screenshot(s):

```bash
bash /home/ryan/ryan-personal/poe2-plugins/build-help/scripts/latest-screenshots.sh [count]
```

Then use the Read tool to view each image file.

## Analysis Protocol

When analyzing a POE2 screenshot, identify and report on what's visible:

### Game UI Elements to Recognize
- **Inventory/Stash**: Item slots, currency, gems, equipment
- **Passive Tree**: Allocated nodes, pathing, available points
- **Skill Bar**: Socketed gems, linked skills, cooldowns
- **Map/Minimap**: Zone layout, objectives, waypoints
- **Character Sheet**: Stats, resistances, DPS, defenses
- **Vendor/NPC**: Available items, quest rewards, dialogue
- **Combat**: Health/mana/ES status, buffs/debuffs, monsters
- **Map Device/Atlas**: Map tiers, completion, atlas passives

### Analysis Priorities
1. **What is the user looking at?** Identify the screen/UI element
2. **What's noteworthy?** Flag anything that stands out (low resists, good drops, quest objectives)
3. **What should they do?** Provide actionable advice based on what you see
4. **Build relevance**: Connect what you see to their Witch build

### Item Recognition
When reading items in screenshots:
- Identify rarity (normal/magic/rare/unique) by border color
- Read mod lines and identify tier quality where possible
- Note socket colors and links
- Flag items that are upgrades or valuable

## Delegation

For fast screenshot reads (identifying what's on screen), delegate to the `screenshot-reader` agent (haiku) via the Task tool with `model: "haiku"`.

For deep analysis requiring build context (e.g., "is this item good for my build?"), handle in the main thread or delegate to the `research` agent.
