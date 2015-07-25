if(room == RoomRoomSm || room == RoomRoomLg)
{
    // Read ClueCoords to see what size clue needs to be created
    
    level = "lvl" + string(lvlNum);
    
    clue = ini_read_real(level, "type", 0);
    
    // Convert data from file into valid ObjClue
    
    clueVar = string(irandom_range(1,3));
    
    if(clue == 0)
    {
        strClueType = asset_get_index('ObjClueLg');
        clueType = "ClueLg" + clueVar;
    }
    else if(clue == 1)
    {
        strClueType = asset_get_index('ObjClueMd');
        clueType = "ClueMd" + clueVar;
    }
    else
    {
        strClueType = asset_get_index('ObjClueSm');
        clueType = "ClueSm" + clueVar;
    }
    
    instance_create(x,y,strClueType);
}
