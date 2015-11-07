/*
*   Perform mission checks and verify player input for each NPC
*/

with(other)
{
    // Actions to perform on first encounter with each NPC
    switch(NPCName)
    {
        case NPC001:    // Lobby Woman
        {
            m = missionList[| 0];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC001;
                ScrItemDrop(INVJEWELS);
                totalCash += REWARD;
            }
            
            break;
        }
        case NPC002:    // Maintenance guy
        {
            m = missionList[| 0];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC002;
                ScrItemDrop(INVJEWELS);
            }
            
            break;
        }
        case NPC003:    // Laptop guy
        {
            m = missionList[| 1];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC003;
                ScrItemDrop(INVLAPTOP);
            }
            
            break;
        }
        case NPC004:    // Hoodie guy
        {
            m = missionList[| 1];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC004;
                ScrItemDrop(INVLAPTOP);
                totalCash += REWARD;
            }
            
            break;
        }
        case NPC006:    // Whistleblower
        {
            m = missionList[| 2];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC006;
                ScrItemDrop(INVDOC);
            }
            
            break;
        }
        case NPC007:    // Man in suit
        {
            m = missionList[| 2];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC007;
                ScrItemDrop(INVDOC);
                totalCash += REWARD;
            }
            
            break;
        }
        case NPC009:    // Old man in hallway
        {
            m = missionList[| 4];
            if(keyboard_check_pressed(ord("Y")))
            {
                m[? "Complete"] = true;
                m[? "Name"] = NPC009;
                ScrItemDrop(INVLETTER);
            }
            
            break;
        }
        case NPC010:    // Ad person
        default:
            break;
            
    }
    NPCMet = true;      // Set the NPC as having been met
}
