if(room == RoomRoomSm || room == RoomRoomLg)
{
    // Randomly generate the number of ObjMess objects to be distributed in the room
    messCount = irandom_range(1,100);
    
    // Using messCount, begin to loop until all ObjMess are distributed
    for(i = 0; i < messCount; i++)
    {
        // Pick a 0-3 random number to determine the ObjMess to be placed        
                
        mess = random(3);
        messVar = string(irandom_range(1,6));
        
        
        // Use the random number, and x,y coordinates to place ObjMess object in the room
        if(mess <= 1)
        {
             instance_create(x,y,ObjMessLg);
             messType = "MessLg" + messVar;
             
        }
        else if(mess <= 2)
        {
             instance_create(x,y,ObjMessMd);
             messType = "MessMd" + messVar;
        }
        else
        {
             instance_create(x,y,ObjMessSm);
             messType = "MessSm" + messVar;
        }
    }
}
