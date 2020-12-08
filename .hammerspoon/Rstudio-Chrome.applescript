tell application "Google Chrome"
    repeat with w in (windows)
        set j to 0
        repeat with t in (tabs of w)
            set j to j + 1
            if title of t = "RStudio" or title of t = "RStudio Sign In" then
                set (active tab index of w) to j
                set index of w to 1

                delay 0.05
                do shell script "open -a Google\\ Chrome"

                return
            end if
        end repeat
    end repeat

    tell window 1 to open location "http://localhost:8787"
end tell
