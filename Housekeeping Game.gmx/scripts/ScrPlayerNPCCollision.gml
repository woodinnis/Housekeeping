/*
*   Perform mission checks and verify player input for each NPC
*/
var btnYes = ObjUI.btnYes;
var btnNo = ObjUI.btnNo;

with(other)
{
    // Actions to perform on first encounter with each NPC
    switch(NPCName)
    {
        case NPC001:    // Lobby Woman
        {
            m = missionList[| 0];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC001;
                ScrItemDrop(INVJEWELS);
                totalCash += REWARD;
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC002:    // Maintenance guy
        {
            m = missionList[| 0];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC002;
                ScrItemDrop(INVJEWELS);
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC003:    // Laptop guy
        {
            m = missionList[| 1];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC003;
                ScrItemDrop(INVLAPTOP);
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC004:    // Hoodie guy
        {
            m = missionList[| 1];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC004;
                ScrItemDrop(INVLAPTOP);
                totalCash += REWARD;
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC006:    // Whistleblower
        {
            m = missionList[| 2];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC006;
                ScrItemDrop(INVDOC);
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC007:    // Man in suit
        {
            m = missionList[| 2];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC007;
                ScrItemDrop(INVDOC);
                totalCash += REWARD;
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC009:    // Old man in hallway
        {
            m = missionList[| 4];
            if(keyboard_check_pressed(ord("Y")) || btnYes)
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC009;
                ScrItemDrop(INVLETTER);
            }
            else if(keyboard_check_pressed(ord("N")) || btnNo)
            {
                m[? "Name"] = REFUSE;
            }
            
            break;
        }
        case NPC010:    // Ad person
        default:
            break;
            
    }
    NPCMet = true;      // Set the NPC as having been met
}
