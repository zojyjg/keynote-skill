#!/usr/bin/env osascript

tell application "Keynote"
    activate
    tell front document
        set slideCount to count of slides
        set docName to name
        set allOutput to "Document: " & docName & " - Slides: " & slideCount & "

"
        
        repeat with i from 1 to slideCount
            set slideInfo to "=== Slide " & i & " ===" & "
"
            set layoutName to name of base layout of slide i
            set slideInfo to slideInfo & "Layout: " & layoutName & "
"
            
            tell slide i
                set txtCount to count of every text item
                if txtCount > 0 then
                    repeat with j from 1 to txtCount
                        try
                            set txtObj to text item j
                            set txtContent to object text of txtObj
                            if txtContent is not "" then
                                if length of txtContent > 150 then
                                    set slideInfo to slideInfo & "[" & j & "] " & (text 1 thru 150 of txtContent) & "...
"
                                else
                                    set slideInfo to slideInfo & "[" & j & "] " & txtContent & "
"
                                end if
                            end if
                        end try
                    end repeat
                end if

                -- Also show content in groups
                set grpCount to count of every group
                if grpCount > 0 then
                    set slideInfo to slideInfo & "Groups: " & grpCount & "
"
                    repeat with gi from 1 to grpCount
                        set grp to group gi
                        set grpTxt to ""
                        repeat with gj from 1 to (count of every text item of grp)
                            try
                                set txtObj to text item gj of grp
                                set txtContent to object text of txtObj
                                set grpTxt to grpTxt & txtContent & " "
                            end try
                        end repeat
                        set slideInfo to slideInfo & "  [G" & gi & "] " & grpTxt & "
"
                    end repeat
                end if
            end tell
            
            set allOutput to allOutput & slideInfo & "
"
        end repeat
        
        return allOutput
    end tell
end tell
