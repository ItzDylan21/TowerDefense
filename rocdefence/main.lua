local screenTop
local screenBottom
local screenLeft
local screenRight
local count = 0
local i = 0
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
    enemyTable[i] = display.newImageRect("images/circle.png", 100, 100)
    enemyTable[i].x = -100
    enemyTable[i].y = 300
    transition.to(enemyTable[i], {delay=1000, time=10000, x=enemy.x + 1200} )
end

while (count < 10) do
	createEnemy()
	count = count + 1
    i = i + 1
end



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



local player1 = display.newImageRect( "sprites/player/player1.png", 50, 50 )
player1.x = display.contentCenterX
player1.y = display.contentCenterY


local function dragPlayer1( event )
 
    local player1 = event.target
    local phase = event.phase
    if ( "began" == phase ) then
        display.currentStage:setFocus( player1 )
        player1.touchOffsetX = event.x - player1.x
        player1.touchOffsetY = event.y - player1.y
    elseif ( "moved" == phase ) then
        player1.x = event.x - player1.touchOffsetX
        player1.y = event.y - player1.touchOffsetY
    elseif ( "ended" == phase or "cancelled" == phase ) then
        display.currentStage:setFocus( nil )
        return true  -- Prevents touch propagation to underlying objects
    end

end

player1:addEventListener( "touch", dragPlayer1 )
