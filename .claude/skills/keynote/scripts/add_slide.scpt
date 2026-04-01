#!/usr/bin/env osascript

on run argv
    set position to item 1 of argv -- "end" or slide number
    
    tell application "Keynote"
        tell front document
            if position is "end" then
                make new slide at end of document
            else
                make new slide after slide (position as number)
            end if
        end tell
    end tell
    
    return "New slide added"
end run
