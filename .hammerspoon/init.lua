local hyper = { "cmd", "alt", "ctrl", "shift" }

hs.window.animationDuration = 0;

hs.hotkey.bind(hyper, "h", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit(hs.layout.left50)
end)

hs.hotkey.bind(hyper, "l", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit(hs.layout.right50)
end)

hs.hotkey.bind(hyper, "u", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit'[0,0,50,50]'
end)

hs.hotkey.bind(hyper, "j", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit(hs.layout.maximized)
end)

hs.hotkey.bind(hyper, "n", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit'[0,50,50,100]'
end)


hs.hotkey.bind(hyper, "[", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit'[50,0,100,50]'
end)

hs.hotkey.bind(hyper, "/", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToUnit'[50,50,100,100]'
end)

hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)

hs.hotkey.bind(hyper, "m", function()
  local win = hs.window.focusedWindow();
  if not win then return end

  win:moveToScreen(win:screen():next())
end)

hs.hotkey.bind(hyper, "escape", function()
  hs.caffeinate.startScreensaver()
end)

local applicationHotkeys = {
  s = 'Sublime Text',
  a = 'iTerm',
  g = 'Google Chrome',
  o = 'Microsoft Outlook',
  y = 'Spotify',
  z = 'HipChat',
  r = 'Rstudio',
  e = 'Evernote',
  w = 'Microsoft Word',
  x = 'Microsoft Excel',
  i = 'Microsoft Powerpoint',
  f = 'Finder',
  p = 'Preview',
  c = 'Calendar',
  k = 'Google Keep'
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

local caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("AWAKE")
    else
        caffeine:setTitle("SLEEPY")
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send():release()


