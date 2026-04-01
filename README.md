# Keynote Slides Skill

**Create and modify Keynote presentations using natural language with Claude Code.**

## Installation

```bash
# Clone this repo
git clone https://github.com/zojyjg/keynote-skill.git ~/keynote-skill

# Create symlink to make it available to Claude Code
ln -s ~/keynote-skill/.claude/skills/keynote ~/.claude/skills/keynote
```

## Usage

Open a Keynote file and tell Claude what you want:

```
Open ~/Documents/presentation.key
Show me the slide structure
Change the title on slide 1 to "My Presentation"
Set the body text on slide 2 to three bullet points
Add a new slide after slide 2
Change the background to dark blue
```

### Commands

| Command | Description |
|---------|-------------|
| `/keynote open <file>` | Open a Keynote file |
| `/keynote info` | Show slide structure |
| `/keynote title <num> <text>` | Set slide title |
| `/keynote body <num> <text>` | Set slide body |
| `/keynote add [after]` | Add new slide |
| `/keynote delete <num>` | Delete slide |

## Requirements

- macOS
- Keynote app
- Claude Code

## Technical Details

This skill uses AppleScript to control Keynote:

```applescript
tell application "Keynote"
    open "file.key"
    tell front document
        set object text of default title item of slide 1 to "Title"
        set object text of default body item of slide 1 to "Body text"
    end tell
end tell
```

## License

MIT
