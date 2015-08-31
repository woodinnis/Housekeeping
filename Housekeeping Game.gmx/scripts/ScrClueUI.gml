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
        ObjOverlord.docsFound = true;
        
        // Write a message on the note
        alignUI();
        draw_text(centerX, topThird, COMMUNIQUE001);
        ObjOverlord.noteFound = true;
    }
}    
// Show player which clues they have found
/* Only display this information while in the hallway
if(room == RoomHallway)
{
    setX = view_wview[0];
    setY = view_hview[0];
    
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    
    // Large    
    if(ObjOverlord.clueLg)
    {
        draw_text(setX - 20, setY - 60,"You found a large clue!");
    }
    // Medium
    if(ObjOverlord.clueMd)
    {
        draw_text(setX - 20, setY - 40,"You found a medium clue!");
    }
    // Small
    if(ObjOverlord.clueSm)
    {
        draw_text(setX - 20, setY - 20,"You found a small clue!");
    }
        
}
