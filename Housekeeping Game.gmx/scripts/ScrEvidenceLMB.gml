// Draw code executed when player clicks on a piece of evidence/information
//if(device_mouse_check_button(0,mb_left))
switch(other.object_index)
{
    case ObjEvidenceShirt:
    {
        ObjOverlord.drawShirt = true;
        break;
    }
    case ObjEvidenceDocs:
    {
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
        ObjOverlord.drawNote = true;
        break;
    }
    default:
    {
        show_message(string(other));
        break;
    }
}
