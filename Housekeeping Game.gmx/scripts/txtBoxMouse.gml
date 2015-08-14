// Create menu roll-over message instances
    if(!instance_exists(menuMsg0))
        Msg0 = instance_create(mouse_x,mouse_y,menuMsg0);
    if(!instance_exists(menuMsg1))
        Msg1 = instance_create(mouse_x,mouse_y,menuMsg1);
    if(!instance_exists(menuMsg2))
        Msg2 = instance_create(mouse_x,mouse_y,menuMsg2);

// Set a bounding box within the shape of the text box

if((mouse_x > x && mouse_x < x + sprite_width) && (mouse_y > y && mouse_y < y + sprite_height))
{
    // Set menu item bounding boxes
    if((mouse_y > y) && (mouse_y < y + (sprite_height / 3)))
    {   
        // Set visibility of message 1 & 2 to false
        Msg1.visible = false; 
        Msg2.visible = false; 
        
        // Set visibility of message 0 to true
        Msg0.visible = true;       
        
        // Set the message coordinates to follow the mouse pointer
        Msg0.x = mouse_x;
        Msg0.y = mouse_y;
        
        if(mouse_check_button_pressed(mb_left))
        {
            show_message_async("Ignore it. It's someone else's Problem");
            ObjOverlord.lvlNum -= 0.5;
            // Reactivating/reinstancing the original clue would be ideal here.
            
            dropItem = instance_create(ObjOverlord.currentItemX,ObjOverlord.currentItemY,ObjOverlord.currentItem);
            dropItem.hasBeenTouched = true;         
            dropItem.x = ObjOverlord.currentItemX;
            dropItem.y = ObjOverlord.currentItemY;
                        
            // Clear the message and menu from the screen
            Msg0.visible = false
            
            instance_destroy();
            
        }
        
    }
    else if((mouse_y > y + sprite_height / 3) && (mouse_y < y + (sprite_height / 3) * 2))
    {        
        // Set visibilty of message 0 & 2 to false
        Msg0.visible = false;
        Msg2.visible = false;
        
        // Set message 1 to true
        Msg1.visible = true;
        
        // Set the message coordinate to follow the mouse pointer
        Msg1.x = mouse_x;
        Msg1.y = mouse_y;
        
        if(mouse_check_button_pressed(mb_left))
        {
            show_message_async("The police are on the way!");
            ObjOverlord.lvlNum += 0.5;
            // A couple of sirens playing in the background would be a nice touch
            
            // Clear the message and menu from the screen
            Msg1.visible = false
            instance_destroy();
        }
    }
    else if((mouse_y > y + (sprite_height / 3) * 2) && (mouse_y < y + sprite_height))
    {
        // Set visibility of message 0 & 1 to false
        Msg0.visible = false;        
        Msg1.visible = false;
        
        // Set visibility of message 2 to true
        Msg2.visible = true;
        
        // Set the message coordinate to follow the mouse pointer
        Msg2.x = mouse_x;
        Msg2.y = mouse_y;
        
        if(mouse_check_button_pressed(mb_left))
        {
            show_message_async("Blackmail is always the best solution.");
            ObjOverlord.lvlNum += 1;
            
            // Clear the message and menu from the screen
            Msg1.visible = false
            instance_destroy();
        }
    }    
}
else
{
    // Clear the messages from the screen if the mouse leaves the menu box
    Msg0.visible = false;
    Msg1.visible = false;
    Msg2.visible = false;
}