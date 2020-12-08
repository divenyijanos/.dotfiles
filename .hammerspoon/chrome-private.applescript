do shell script "open -a Google\\ Chrome --args --profile-directory=Profile\\ 1"
tell application "System Events"
    tell process "Google Chrome"
        tell menu bar 1
            tell menu "People"
                click menu item 2
            end tell
        end tell
    end tell
end tell
