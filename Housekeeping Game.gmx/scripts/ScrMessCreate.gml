// Set variables

spawnX = 0;
spawnY = 0;
i = 100;
 
while(!place_empty(spawnX,spawnY) && i >0 )
{
    spawnX = irandom(room_width - sprite_width);
    spawnY = irandom(room_height - sprite_height);
    
    i--;
}

if (spawnX = 0) || (spawnY = 0)
{
 //show_message("placement fail");
}

x = spawnX;
y = spawnY;
sprite_index = asset_get_index(ObjOverlord.messType);
