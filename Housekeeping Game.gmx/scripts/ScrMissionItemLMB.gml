/*
*   Code executed when a player clicks on a pickup object in game
*
*   Tools and Mission objects behave differently
*/

iAm = other.object_index;

// Variables to hold current counts of tools in inventory
var bleachCount = ds_map_find_value(myInventory, INVBLEACH);
var towelCount = ds_map_find_value(myInventory, INVTOWELS);
var sheetCount = ds_map_find_value(myInventory, INVSHEETS);

if(is_undefined(bleachCount))
    bleachCount = 0;

if(is_undefined(towelCount))
    towelCount = 0;

if(is_undefined(sheetCount))
    sheetCount = 0;

switch(iAm)
{
    // The tools first
    case ObjBleach:
    case ObjTowels:
    case ObjSheets:
    {
        if(!is_undefined(Price))
        {   
            if(totalCash >= Price)
            {
                if((iAm == ObjBleach && bleachCount < MAXRESOURCE) || (iAm == ObjTowels && towelCount < MAXRESOURCE) || (iAm == ObjSheets && sheetCount < MAXRESOURCE))
                {
                    totalCash -= Price;
                    audio_play_sound(SndCash,5,false);
                    woosh(iAm);
                    ScrItemAdd(Key, Value);
                }
            }
        }
        break;
    }
    // Then the mission objects
    case ObjNecklace:
    {
        m = missionList[| 0];
        m[? "Key Object"] = true;
        ScrItemAdd(Key, Value);
        instance_destroy();
        break;
    }
    case ObjLaptop:
    {
        m = missionList[| 1];
        m[? "Key Object"] = true;
        ScrItemAdd(Key, Value);
        instance_destroy();
        break;
    }
    case ObjLetter:
    {
        if(iAm.Value == LET3)
        {
            m = missionList[| 4];
            m[? "Key Object"] = true;
        }
        ScrItemAdd(Key, Value);
        instance_destroy();
        break;   
    }   
    case ObjDocument:
    {
        if(iAm.Value == DOC1)
        {
            m = missionList[| 2];
            m[? "Key Object"] = true;
        }
        ScrItemAdd(Key, Value);
        instance_destroy();
        break;
    }
    case ObjAd:
    {
        ScrItemAdd(Key, Value);
        instance_destroy();
    }
    default:
        break;
}

