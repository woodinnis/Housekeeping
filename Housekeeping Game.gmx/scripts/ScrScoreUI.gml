// Display the player's current score on screen
draw_set_halign(fa_right);
draw_set_valign(fa_top);

setX = (20 + string_width("HOUSEKEEPING"));

if(room != RoomHallway)
{
    // Display the current number of cleaned rooms
    if(currentScore < ObjOverlord.currentGoal && ObjOverlord.enteredRoom == true)
    {   
        draw_text(setX, 40, "ROOMS: " + string(currentScore));
    }
    // Display a message when all rooms have been cleaned
    else
    {
        draw_text(setX, 40, "ALL CLEAN");        
    }
}

