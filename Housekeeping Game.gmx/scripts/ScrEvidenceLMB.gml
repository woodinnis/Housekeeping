// Code executed when player clicks on a piece of evidence/information
// Sets draw bools to true
// Adds evidence to inventory
// Destroys instances

switch(other.object_index)
{
    case ObjEvidenceShirt:
    {
        ObjOverlord.drawShirt = true;
        scr_itemAdd(1);
        instance_destroy();
        break;
    }
    case ObjEvidenceDocs:
    {
        ObjOverlord.drawDocs = true;
        scr_itemAdd(2);
        instance_destroy();
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
        scr_itemAdd(3);
        instance_destroy();
        break;
    }
    default:
        break;
}

