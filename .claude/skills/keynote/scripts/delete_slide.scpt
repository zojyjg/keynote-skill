#!/usr/bin/env osascript

on run argv
    set slideNum to item 1 of argv
    
    tell application "Keynote"
        tell front document
            delete slide (slideNum as number)
        end tell
    end tell
    
    return "Slide " & slideNum & " deleted"
end run
