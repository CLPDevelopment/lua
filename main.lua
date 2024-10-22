-- Import this library
local GUI = require("GUI")
-- We will also need downloaded double buffering library to render rectangles
local screen = require("Screen")

--------------------------------------------------------------------------------

-- Create new workspace
local workspace = GUI.workspace()

-- Create and add template object to workspace
local object = workspace:addChild(GUI.object(3, 2, 50, 10))
-- Create own :draw() method and make it render green rectangle
object.draw = function(object)
	screen.drawRectangle(object.x, object.y, object.width, object.height, 0x33FF80, 0x0, " ")
end

--------------------------------------------------------------------------------

-- Draw workspace content once on screen when program starts
workspace:draw()
-- Start processing events for workspace
workspace:start()
