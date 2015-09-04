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
    if(ObjOverlord.drawShirt)   // Shirt
    {
        draw_sprite_ext(SprEvidenceShirt,0,centerX,centerY,5,5,0,c_white,1);
        ObjOverlord.shirtFound = true;
    }
    if(ObjOverlord.drawDocs)    // Documents
    {
        draw_sprite_ext(SprEvidenceDocs,0,centerX,centerY,5,5,0,c_white,1);
        ObjOverlord.docsFound = true;
    }
    if(ObjOverlord.drawNote)    // Post-it note
    {
        draw_sprite_ext(SprEvidenceNote,0,centerX,centerY,15,15,0,c_white,1);
        ObjOverlord.noteFound = true;
        
        // Write a message on the note
        alignUI();
        draw_set_font(fontNotes);
        draw_text(centerX, topThird, COMMUNIQUE001);
        ObjOverlord.noteFound = true;
    }
}    
