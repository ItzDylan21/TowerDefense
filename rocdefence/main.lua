local screenTop
local screenBottom
local screenLeft
local screenRight
local count = 0
local spawnParams = {
    x = -100,
    y = 300,
    spawnTime = 200,
}
local enemyTable = {}


-- Get current edges of visible screen
screenTop = display.screenOriginY
screenBottom = display.viewableContentHeight + display.screenOriginY
screenLeft = display.screenOriginX
screenRight = display.viewableContentWidth + display.screenOriginX

--show background image
local background = display.newImageRect("images/level1.png", (1.33 * screenRight), (screenBottom), native.systemFont, 45)
background.x = display.contentCenterX
background.y = display.contentCenterY




local function createEnemy()
 
  local enemy = display.newImageRect("images/circle.png", 100, 100)
  table.insert( enemyTable, enemy )
  enemy.myName = "enemy"

  enemy.x = -100
  enemy.y = 300
  transition.to(enemy, {delay=1000, time=10000, x=enemy.x + 1200} )
end

local function rechtsfunctie()
	transition.to (enemy, {time=10000, x=enemy.x+ 1200})
	transition.to (background, {x=background.x - 30})
end
while (count < 10) do
	createEnemy()
	count = count + 1
end


