#!/usr/bin/env osascript

on run argv
    set slideNum to item 1 of argv
    set newBody to item 2 of argv
    
    tell application "Keynote"
        tell front document
            set bodyItem to default body item of slide (slideNum as number)
            set object text of bodyItem to newBody
        end tell
    end tell
    
    return "Body text updated on slide " & slideNum
end run
