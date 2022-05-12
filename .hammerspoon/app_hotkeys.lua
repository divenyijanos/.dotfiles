-- --------------------------------------
-- Application hotkeys
-- --------------------------------------

local applicationHotkeys = {
  s = 'Visual Studio Code',
  a = 'iTerm',
  g = 'chrome-private',
  w = 'chrome-work',
  o = 'Microsoft Outlook',
  y = 'Spotify',
  r = 'Rstudio-Chrome',
  t = 'Rstudio',
  q = 'BigQuery',
  e = 'Slack',
  d = 'Finder',
  z = 'zoom.us',
  v = 'Preview',
  i = 'Todoist',
  c = 'Calendar',
  n = 'Notion',
  u = 'Tunnelblick'
}

for key, app in pairs(applicationHotkeys) do
  hyper:bind({}, key, function()
    if app == "Rstudio-Chrome" then
        hs.osascript.applescriptFromFile("Rstudio-Chrome.applescript")
    elseif app == "BigQuery" then
        hs.osascript.applescriptFromFile("bigquery.applescript")
    elseif app == "chrome-private" then
        hs.osascript.applescriptFromFile("chrome-private.applescript")
    elseif app == "chrome-work" then
        hs.osascript.applescriptFromFile("chrome-work.applescript")
    else
        hs.application.launchOrFocus(app)
    end
  end)
end
