-- Project: U-Move

local widget = require ("widget")
local composer = require ("composer")
-------------------------------------------------------------------------------
-- For login

function native.setKeyboardFocus( textField )
end
local function onUsername( event )
    if ( "began" == event.phase ) then
    elseif ( "submitted" == event.phase ) then
        native.setKeyboardFocus( passwordField )
    end
end

local function onPassword( event )
    if ( "submitted" == event.phase ) then
        native.setKeyboardFocus( nil )
    end
end

-- Username and password design/display
usernameField = native.newTextField( 375, 830, 440, 80 )
usernameField.font = native.newFont( native.systemFontBold, 45 )
usernameField.text = ""
usernameField:setTextColor( 0 )
usernameField:addEventListener( "userInput", onUsername )

passwordField = native.newTextField( 375, 1020, 440, 80 )
passwordField.font = native.newFont( native.systemFontBold, 45 )
passwordField.text = ""
passwordField.isSecure = true
passwordField:setTextColor( 0 )
passwordField:addEventListener( "userInput", onPassword )

-------------------------------------------------------------------------------
-- Background design/display
-- local background = display.newImageRect( "background.jpg", display.contentWidth, display.contentHeight)
-- background.x = display.contentCenterX
-- background.y = display.contentCenterY
--
-- local logo = display.newImageRect( "logo.png", 375, 360)
-- logo.x = display.contentCenterX
-- logo.y = display.contentHeight-1100

local back = display.newImageRect("back.png", display.contentWidth, display.contentHeight)
back.x = display.contentCenterX
back.y = display.contentCenterY

local login = display.newImageRect( "login.png", 400, 360)
login.x = display.contentCenterX
login.y = display.contentHeight-150


-- local title = display.newText( "U-MOVE", display.contentCenterX, 500, native.systemFont, 150)
-- title:setFillColor( 0 )
--
-- local title = display.newText( "Enter email:", display.contentCenterX, 650, native.systemFont, 50 )
-- title:setFillColor( 0 )
--
-- local title = display.newText( "Enter password:", display.contentCenterX, 880, native.systemFont, 50 )
-- title:setFillColor( 0 )

display.setStatusBar( display.DefaultStatusBar )
