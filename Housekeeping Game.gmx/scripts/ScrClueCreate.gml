// Generate a random set of coordinates
intDefaultX = irandom(room_width - sprite_width);
intDefaultY = irandom(room_height - sprite_height);

level = "lvl" + string(ObjOverlord.lvlNum);

// Obtain spawn coordinates from open data file
x = ini_read_real(level, "clueX", intDefaultX);
y = ini_read_real(level, "clueY", intDefaultY);

sprite_index = asset_get_index(ObjOverlord.clueType);

hasBeenTouched = false;



