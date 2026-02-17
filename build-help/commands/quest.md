---
name: quest
description: Get help with POE2 campaign quests — objectives, directions, boss tips
disable-model-invocation: true
argument: "[name or act] - quest name, act number, or 'current' to check screenshot"
---

# /build-help:quest — Quest Help

The user needs help with a POE2 campaign quest.

## Steps

1. **Determine the quest**:
   - If `{{ argument }}` is a quest name → look up that quest
   - If `{{ argument }}` is an act number → give act overview with key quests
   - If `{{ argument }}` is "current" or empty → grab latest screenshot to identify current quest/zone

2. **For screenshot-based detection**:
   - Run `bash /home/ryan/ryan-personal/poe2-plugins/build-help/scripts/latest-screenshots.sh 1`
   - Read the screenshot to identify the current zone/quest
   - Provide contextual help based on what's visible

3. **Look up quest info** via fast-lookup agent (haiku):
   ```
   Task(subagent_type: "general-purpose", model: "haiku", prompt: "POE2 quest help: {{ argument }}. Look up on poe2wiki.net. Give: objective, where to go, boss tips if applicable, quest reward. Keep it concise — player is mid-game.")
   ```

4. **Provide help**:
   - Objective and directions
   - Boss warnings if applicable
   - Quest reward recommendations for Witch
   - Next quest in the chain

## Examples

- `/build-help:quest act 2` → Overview of Act 2 quests, key rewards, boss tips
- `/build-help:quest The Frozen River` → Specific quest walkthrough
- `/build-help:quest current` → Screenshot analysis to identify where the player is
