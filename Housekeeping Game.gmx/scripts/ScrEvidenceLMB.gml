// Draw code executed when player clicks on a piece of evidence/information
//if(device_mouse_check_button(0,mb_left))
switch(other.object_index)
{
    case ObjEvidenceShirt:
    {
        scr_itemAdd(1);
        ObjOverlord.drawShirt = true;
        break;
    }
    case ObjEvidenceDocs:
    {
        scr_itemAdd(2);
        ObjOverlord.drawDocs = true;
        break;
    }
    case ObjEvidenceLaptop:
    case ObjEvidencePhone:
    {
        break;
    }   
    case ObjEvidenceNote:
    {
        scr_itemAdd(3);
        ObjOverlord.drawNote = true;
        break;
    }
    default:
    {
        show_message(string(other));
        break;
    }
}

instance_destroy();
