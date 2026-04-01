#!/usr/bin/env osascript

on run argv
    set slideNum to item 1 of argv
    set newTitle to item 2 of argv
    
    tell application "Keynote"
        tell front document
            set titleItem to default title item of slide (slideNum as number)
            set object text of titleItem to newTitle
        end tell
    end tell
    
    return "Title set to: " & newTitle
end run
