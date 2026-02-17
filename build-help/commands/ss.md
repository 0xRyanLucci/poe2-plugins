---
name: ss
description: Grab and analyze the latest POE2 screenshot(s)
disable-model-invocation: true
argument: "[count] - number of screenshots to analyze (default: 1)"
---

# /build-help:ss — Screenshot Grab & Analyze

The user wants to see and analyze their latest POE2 screenshot(s).

## Steps

1. **Grab screenshots**: Run the helper script to get the latest screenshot path(s):
   ```bash
   bash /home/ryan/ryan-personal/poe2-plugins/build-help/scripts/latest-screenshots.sh {{ count | default: 1 }}
   ```

2. **Read each screenshot**: Use the Read tool on each image file path returned by the script. Claude Code's multimodal capability will display the image.

3. **Quick analysis**: Delegate to the `screenshot-reader` agent (haiku) via Task tool for fast OCR and UI element identification:
   ```
   Task(subagent_type: "general-purpose", model: "haiku", prompt: "Analyze this POE2 screenshot for a Witch player. Identify: what screen/UI is shown, any items/gems/passives visible, health/mana/ES status, anything noteworthy. Image path: <path>")
   ```

4. **Report to user**: Summarize what's in the screenshot and provide any immediate advice (e.g., "your fire resistance is uncapped" or "that ring is an upgrade").

## If No Screenshots Found
Tell the user to save a screenshot to `C:\Users\ryanl\Desktop\poe2\` and try again.
