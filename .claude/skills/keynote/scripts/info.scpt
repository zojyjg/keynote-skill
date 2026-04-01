#!/usr/bin/env osascript

tell application "Keynote"
    activate
    tell front document
        set slideCount to count of slides
        set docName to name
        
        -- Get slide info
        set slideInfo to {}
        repeat with i from 1 to slideCount
            set slideName to name of slide i
            set slideType to name of base layout of slide i
            set end of slideInfo to "Slide " & i & ": " & slideName & " (layout: " & slideType & ")"
        end repeat
        
        return "Document: " & docName & "
Slides: " & slideCount & "
" & (join slideInfo, "
")
    end tell
end tell

on join(theList, delimiter)
    set oldDelimiters to AppleScript's text item delimiters
    set AppleScript's text item delimiters to delimiter
    set theString to theList as string
    set AppleScript's text item delimiters to oldDelimiters
    return theString
end join
