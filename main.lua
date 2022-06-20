local controllerHaptics = require "plugin.controllerHaptics"
local widget = require "widget"
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor(0,0,.5)

local title = display.newText( "Controller Haptics", display.contentCenterX, 50, native.systemFont, 20 )



local checkForSupport = widget.newButton( {
        x =  display.contentCenterX,
        y = display.contentCenterY-30,
        id = "button1",
        label = "Check For Support",
        onRelease = function ()

          native.showAlert( "Does support controllerHaptics?", tostring(controllerHaptics.isSupported()), {"Ok"} )
        end
} )

local playCutsomHaptics = widget.newButton( {
        x =  display.contentCenterX,
        y = display.contentCenterY+50,
        id = "button2",
        label = "Play Custom Controller Haptics",
        onRelease = function ()
          controllerHaptics.play(system.pathForFile("Sparkle.ahap"))
        end
} )

local playCutsomHapticsLeftHandle = widget.newButton( {
        x =  display.contentCenterX,
        y = display.contentCenterY+100,
        id = "button3",
        label = "Play Haptics on Left Handle",
        onRelease = function ()
          controllerHaptics.play(system.pathForFile("Sparkle.ahap"), "leftHandle")
        end
} )
