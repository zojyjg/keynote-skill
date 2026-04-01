#!/usr/bin/env osascript

on run argv
    set filePath to item 1 of argv
    
    tell application "Keynote"
        activate
        open filePath
    end tell
    
    return "Opened: " & filePath
end run
