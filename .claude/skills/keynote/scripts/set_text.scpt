#!/usr/bin/env osascript

on run argv
    if (count of argv) < 3 then
        return "Usage: set_text.scpt <slideNum> <oldText> <newText>"
    end if
    
    set slideNum to item 1 of argv
    set oldText to item 2 of argv
    set newText to item 3 of argv
    
    tell application "Keynote"
        tell front document
            set found to false
            tell slide (slideNum as number)
                repeat with j from 1 to (count of every text item)
                    try
                        set txtObj to text item j
                        set txtContent to object text of txtObj
                        if txtContent contains oldText then
                            set object text of txtObj to newText
                            set found to true
                            exit repeat
                        end if
                    end try
                end repeat
            end tell
            
            if found then
                return "Replaced on slide " & slideNum & ": """ & oldText & """ -> """ & newText & """
"
            else
                return "Text not found on slide " & slideNum & ": """ & oldText & """
"
            end if
        end tell
    end tell
end run
