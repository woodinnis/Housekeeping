// Display the player's current score on screen
draw_set_halign(fa_left);
draw_set_valign(fa_top);

setX = (20)
setY = 20;

if(room != RoomHallway)
{
    // Display the current number of cleaned rooms
    if(currentScore < ObjOverlord.currentGoal && ObjOverlord.enteredRoom == true)
    {   
        draw_text(setX, setY, "ROOMS: " + string(currentScore));
    }
    // Display a message when all rooms have been cleaned
    else
    {
        draw_text(setX, setY, "ALL CLEAN");        
    }
}
