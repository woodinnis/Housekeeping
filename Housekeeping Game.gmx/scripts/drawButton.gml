/*
*   Draw buttons based on the arguments sent in the function call
*/

// Set variables based on function arguments
var btnX = argument0;
var btnY = argument1;
var btnType = argument2;

// Empty variable for final draw function
var button = "";

// Check and set button type
switch(btnType)
{
    case BTN001:
    {
        button = SprEvidencePhone;
        break;
    }
    case BTN002:
    {
        button = SprEvidenceNote;
    }
    default:
        break;
}

// Draw button
draw_sprite(button, 0, btnX, btnY);
