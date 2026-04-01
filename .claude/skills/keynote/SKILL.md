# Keynote Slides Skill

**Create and modify Keynote presentations using natural language.**

## Trigger
- Ask to open or analyze a Keynote file
- Want to create a new presentation
- Need to modify slides, text, images, or styling

## Capabilities

### Open and Analyze
```
Open ~/Documents/presentation.key
Show me the slide structure
```

### Modify Content
```
Replace "old text" with "new text" on slide 1
Change the text "Title" to "New Title" on slide 2
```

### Add/Remove Slides
```
Add a new slide after slide 2
Delete slide 5
```

## Technical Details

Uses AppleScript to control Keynote on macOS.

**Key features:**
- Reads ALL text boxes on each slide (works with Blank layout templates)
- Finds and replaces text by content matching
- Supports all Keynote layouts

**Important Notes:**
- Slides are numbered starting from 1
- Text replacement matches partial content
- Works with both standard and Blank layouts

### About Keynote Groups

Keynote files often contain **groups** (分组) - collections of shapes and text items that move together. Common examples:
- Date circles on timelines (圆形日期图标)
- Icon + text combinations
- Complex diagram elements

**Group numbering:** Keynote assigns group IDs by creation order, NOT by visual position (left-to-right). Always verify the visual order by checking the Keynote file directly when working with groups.

## Scripts

| Script | Purpose |
|--------|---------|
| `open.scpt` | Open a .key file |
| `info.scpt` | Show all slides and text content (including groups) |
| `set_text.scpt` | Find and replace text on a slide (top-level only) |
| `set_group_text.scpt` | Update text inside a specific group |
| `add_slide.scpt` | Add a new slide |
| `delete_slide.scpt` | Delete a slide |

### set_group_text.scpt Usage
```
set_group_text.scpt <slideNum> <groupNum> <oldText> <newText>
```
Example: Update date in group 3 of slide 5:
```
osascript set_group_text.scpt 5 3 "JUL" "APR"
osascript set_group_text.scpt 5 3 "1" "14"
```
