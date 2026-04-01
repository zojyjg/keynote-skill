#!/usr/bin/env osascript

-- Usage: set_group_text.scpt <slideNum> <groupNum> <oldText> <newText>
-- Updates text inside a group (e.g., date circles in timeline)

on run argv
    if (count of argv) < 4 then
        return "Usage: set_group_text.scpt <slideNum> <groupNum> <oldText> <newText>"
    end if
    
    set slideNum to item 1 of argv
    set groupNum to item 2 of argv
    set oldText to item 3 of argv
    set newText to item 4 of argv
    
    tell application "Keynote"
        tell front document
            set found to false
            tell slide (slideNum as number)
                set grp to group (groupNum as number)
                repeat with j from 1 to (count of every text item of grp)
                    try
                        set txtObj to text item j of grp
                        set txtContent to object text of txtObj
                        if txtContent contains oldText then
                            set object text of txtObj to newText
                            set found to true
                            log "Updated group " & groupNum & " item " & j
                        end if
                    end try
                end repeat
            end tell
            
            if found then
                return "Replaced in group " & groupNum & " of slide " & slideNum & ": """ & oldText & """ -> """ & newText & """
"
            else
                return "Text not found in group " & groupNum & " of slide " & slideNum & ": """ & oldText & """
"
            end if
        end tell
    end tell
end run
