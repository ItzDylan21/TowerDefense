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


local cannon1 = display.newImageRect( "sprites/cannon/cannon1.png", 150, 150 )
cannon1.x = display.contentCenterX
cannon1.y = display.contentCenterY

local cannon2 = display.newImageRect( "sprites/cannon/cannon2.png", 200, 200 )
cannon2.x = display.contentCenterX
cannon2.y = display.contentCenterY

local cannon3 = display.newImageRect( "sprites/cannon/cannon3.png", 500, 500 )
cannon3.x = display.contentCenterX
cannon3.y = display.contentCenterY

local cannon4 = display.newImageRect( "sprites/cannon/cannon4.png", 200, 200 )
cannon4.x = display.contentCenterX
cannon4.y = display.contentCenterY

local function dragcannon1( event )
 
    local cannon1 = event.target
    local phase = event.phase
    if ( "began" == phase ) then
        display.currentStage:setFocus( cannon1 )
        cannon1.touchOffsetX = event.x - cannon1.x
        cannon1.touchOffsetY = event.y - cannon1.y
    elseif ( "moved" == phase ) then
        cannon1.x = event.x - cannon1.touchOffsetX
        cannon1.y = event.y - cannon1.touchOffsetY
    elseif ( "ended" == phase or "cancelled" == phase ) then
        display.currentStage:setFocus( nil )
        return true  -- Prevents touch propagation to underlying objects
    end

end

local function dragcannon2( event )
 
    local cannon2 = event.target
    local phase = event.phase
    if ( "began" == phase ) then
        display.currentStage:setFocus( cannon2 )
        cannon2.touchOffsetX = event.x - cannon2.x
        cannon2.touchOffsetY = event.y - cannon2.y
    elseif ( "moved" == phase ) then
        cannon2.x = event.x - cannon2.touchOffsetX
        cannon2.y = event.y - cannon2.touchOffsetY
    elseif ( "ended" == phase or "cancelled" == phase ) then
        display.currentStage:setFocus( nil )
        return true  -- Prevents touch propagation to underlying objects
    end

end

local function dragcannon3( event )
 
    local cannon3 = event.target
    local phase = event.phase
    if ( "began" == phase ) then
        display.currentStage:setFocus( cannon3 )
        cannon3.touchOffsetX = event.x - cannon3.x
        cannon3.touchOffsetY = event.y - cannon3.y
    elseif ( "moved" == phase ) then
        cannon3.x = event.x - cannon3.touchOffsetX
        cannon3.y = event.y - cannon3.touchOffsetY
    elseif ( "ended" == phase or "cancelled" == phase ) then
        display.currentStage:setFocus( nil )
        return true  -- Prevents touch propagation to underlying objects
    end

end

local function dragcannon4( event )
 
    local cannon4 = event.target
    local phase = event.phase
    if ( "began" == phase ) then
        display.currentStage:setFocus( cannon4 )
        cannon4.touchOffsetX = event.x - cannon4.x
        cannon4.touchOffsetY = event.y - cannon4.y
    elseif ( "moved" == phase ) then
        cannon4.x = event.x - cannon4.touchOffsetX
        cannon4.y = event.y - cannon4.touchOffsetY
    elseif ( "ended" == phase or "cancelled" == phase ) then
        display.currentStage:setFocus( nil )
        return true  -- Prevents touch propagation to underlying objects
    end

end

cannon1:addEventListener( "touch", dragcannon1 )
cannon2:addEventListener( "touch", dragcannon2 )
cannon3:addEventListener( "touch", dragcannon3 )
cannon4:addEventListener( "touch", dragcannon4 )
