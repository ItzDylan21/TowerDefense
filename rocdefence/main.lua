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
enemy.x = -100
enemy.y = 300

local function rechtsfunctie()
	transition.to(enemy, {time=10000, x=enemy.x+ 1200})
	transition.to (background, {x=background.x - 30})
end
rechtsfunctie()

local enemy1 = display.newImageRect("images/circle2.png", 100, 100)
enemy1.x = -100
enemy1.y = 300

local function rechtsfunctie1()
	transition.to(enemy1, {time=13000, x=enemy1.x+ 1200})
	transition.to (background, {x=background.x - 30})
end
rechtsfunctie1()

local enemy2 = display.newImageRect("images/circle1.png", 100, 100)
enemy2.x = -100
enemy2.y = 300

local function rechtsfunctie2()
	transition.to(enemy2, {time=19000, x=enemy2.x+ 1200})
	transition.to (background, {x=background.x - 30})
end
rechtsfunctie2()