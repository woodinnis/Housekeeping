/*
*   This is for UI elements related to Items found while cleaning rooms
*
*   It was originally written for use with clues, as a spy game,
*   however it can be repurposed for use simply with found objects.
*/


// Notify player that a clue has been found
if(room != RoomHallway)
{
    if(instance_exists(ObjClueParent))
    {
        if(ObjClueParent.hasBeenTouched)
        {
            alignUI();  
            draw_text(centerX,20, "You Found Something!");
        }
    }
}

// Draw large versions of the evidence on screen
//if(room != RoomHallway && room != RoomFrontDesk)

if(room != RoomMenu)
{
    alignUI();
    if(ObjOverlord.drawShirt)   // Shirt
    {
        draw_sprite_ext(SprEvidenceShirt,0,centerX,centerY,SPRSCALE,SPRSCALE,0,c_white,1);
        ObjOverlord.shirtFound = true;
        
        // Show a message
        drawRect();
        draw_text(centerX, topThird, SHIRT000);
    }
    if(ObjOverlord.drawDocs)    // Documents
    {
        draw_sprite_ext(SprEvidenceDocs,0,centerX,centerY,SPRSCALE,SPRSCALE,0,c_white,1);
        ObjOverlord.docsFound = true;
        
        // Show a message
        drawRect();
        draw_text(centerX, topThird, DOCS000);
    }
    if(ObjOverlord.drawNote)    // Post-it note
    {
        draw_sprite_ext(SprEvidenceNote,0,centerX,centerY,SPRSCALE,SPRSCALE,0,c_white,1);
        ObjOverlord.noteFound = true;
        
        // Write a message on the note
        draw_set_font(fontNotes);
        draw_text(centerX, topThird, COMMUNIQUE001);
        ObjOverlord.noteFound = true;
        
        // Reset font and show a message
        draw_set_font(fontMessages);
        drawRect();
        draw_text(centerX, topThird, NOTE000);
    }
}    
