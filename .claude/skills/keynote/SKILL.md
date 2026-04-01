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

## Scripts

| Script | Purpose |
|--------|---------|
| `open.scpt` | Open a .key file |
| `info.scpt` | Show all slides and text content |
| `set_text.scpt` | Find and replace text on a slide |
| `add_slide.scpt` | Add a new slide |
| `delete_slide.scpt` | Delete a slide |
