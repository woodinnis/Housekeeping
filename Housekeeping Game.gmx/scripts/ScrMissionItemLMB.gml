// Draw code executed when player clicks on a piece of evidence/information
//if(device_mouse_check_button(0,mb_left))

iAm = other.object_index;

ScrItemAdd(Key,Value);

if(!is_undefined(Price))
    totalCash -= Price;

if(!is_real(other.Value))
{
    switch(other.Value)
    {
        case JEWELVAL:
        {
            m = missionList[| 0];
            m[? "Key Object"] = true;
            break;
        }
        case LAPTOPVAL:
        {
            m = missionList[| 1];
            m[? "Key Object"] = true;
            break;
        }
        case DOC1:
        {
            m = missionList[| 2];
            m[? "Key Object"] = true;
            break;
        }
        case LET3:
        {
            m = missionList[| 4];
            m[? "Key Object"] = true;
            break;   
        }
    }

    with(other)
        instance_destroy();
}

