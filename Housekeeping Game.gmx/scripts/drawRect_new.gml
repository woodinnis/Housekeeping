#define drawRect_new
/// Dialogue Text (String), Button Type (int), Head Image, playerParent, doorParent)
/*
*   Draw the background sprite for dialogue boxes
*   
*   The box is downsized as necessary to fit the screen
*/

// Content variables
var dialogueText = "";
var buttonType = 0;
var speakHead = noone;
var player = noone;
var door = noone;

// Position variables
var centerX, centerY;
var spriteX, spriteY;
var spriteW, spriteH;

dialogueText =  argument[0];
buttonType =    argument[1];
speakHead =     argument[2];
player =        argument[3];
door =          argument[4];

// Test for OS and set position variables.

spriteScale = DIALOGUESCALE;

// Set sprite width/height
spriteW = sprite_get_width(SprDialogueBox) * spriteScale;
spriteH = sprite_get_height(SprDialogueBox) * spriteScale;

// Set sprite point-of-origin
spriteX = centerX - (spriteW / 2);
spriteY = centerY - (spriteH / 2);

X2 = centerX + (spriteW/2);
Y2 = centerY + (spriteH/2);
// Mouse coordinates
mouseX = device_mouse_x(0);
mouseY = device_mouse_y(0);

// Scale and draw the background sprite for dialogue boxes
draw_sprite_stretched(SprDialogueBox, 0, spriteX, spriteY, spriteW, spriteH);

// Verify the existance of a player and a door within the current room.
if(instance_exists(ObjPlayerParent) && instance_exists(ObjDoorParent))
{
    // While mouse is inside the rectangle, prevent player movement
    if(point_in_rectangle(mouseX, mouseY, spriteX, spriteY, X2, Y2))
    {
        ObjPlayerParent.moveSpeed = 0;
        ObjDoorParent.doorEnter = false;
    }
    else
    {
        ObjPlayerParent.moveSpeed = PLAYERSPEED;
        ObjDoorParent.doorEnter = true;
    }
}

#define drbutton
/*
*   Draw buttons based on the arguments sent in the function call
*

// Set variables based on function arguments
var btnX = argument0;
var btnY = argument1;
var btnType = argument2;

// Empty variable for final draw function
var button = "";

// User Interaction variables
var mouseX = 0;
var mouseY = 0;
var clicked = false;

// Check and set button type
switch(btnType)
{
    case BTN001:
    {
        button = SprButtonYes;
        break;
    }
    case BTN002:
    {
        button = SprButtonNo;
        break;
    }
    case BTN003:
    {
        button = SprButtonOK;
        break;
    }
    default:
        break;
}

// Draw button
draw_sprite(button, 0, btnX, btnY);

// Create a bounding box for the button
x1 = btnX - sprite_get_width(button)/2;
x2 = btnX + sprite_get_width(button)/2;
y1 = btnY - sprite_get_height(button)/2;
y2 = btnY + sprite_get_height(button)/2;

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

// Check location of mouseX/Y and set to true if clicked
if(point_in_rectangle(mouseX, mouseY, x1,y1,x2,y2))
{
    if(device_mouse_check_button_pressed(0,mb_left))
    {
        clicked = true;
    }
}

return(clicked);