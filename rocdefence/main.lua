local screenTop
local screenBottom
local screenLeft
local screenRight

-- Get current edges of visible screen
screenTop = display.screenOriginY
screenBottom = display.viewableContentHeight + display.screenOriginY
screenLeft = display.screenOriginX
screenRight = display.viewableContentWidth + display.screenOriginX

--show background image
local background = display.newImageRect("images/level1.png", (1.33 * screenRight), (screenBottom), native.systemFont, 45)
background.x = display.contentCenterX
background.y = display.contentCenterY

local enemy = display.newImageRect("images/circle.png", 100, 100)
enemy.x = 500
enemy.y = 300