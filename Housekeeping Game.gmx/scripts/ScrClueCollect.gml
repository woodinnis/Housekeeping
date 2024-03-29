// Set bool to true
hasBeenTouched = true;
ObjOverlord.clueFound = true;

// Set clue collection information
switch(clueType)
{
    case ObjClueLg:
    {
        ObjOverlord.clueLg = true;
        break;
    }
    case ObjClueMd:
    {
        ObjOverlord.clueMd = true;
        break;
    }
    case ObjClueSm:
    {
        ObjOverlord.clueSm = true;
        break;
    }
    default:
    {
        break;
    }
}

instance_destroy();
/*
if (!other.hasBeenTouched)
{
    other.hasBeenTouched = true;
    // Get height of textbox being used
    txtBoxHt = sprite_get_height(SprTextBox);
    // Draw textbox
    instance_create(view_xview[0], view_yview[0] + (view_hview[0] - txtBoxHt),ObjTxtBox);    
    // Destroy ObjClue
    with(other)
    {
        ObjOverlord.currentItem = self.object_index;
        ObjOverlord.currentItemX = x;
        ObjOverlord.currentItemY = y;
        
        //instance_deactivate_region(x-1,y-1,2,2,1,0);
    }
}
