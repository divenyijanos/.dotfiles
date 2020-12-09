do shell script "open -a Google\\ Chrome --args --profile-directory=Default"
tell application "System Events"
    tell process "Google Chrome"
        tell menu bar 1
            tell menu "People"
                click menu item 1
            end tell
        end tell
    end tell
end tell
