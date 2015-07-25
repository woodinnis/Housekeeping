// Player HUD displays the word "HOUSEKEEPING!" as they pass by each door

StrCall = "HOUSEKEEPING!";

draw_text((ObjPlayerHall.x - string_width(StrCall)) / 2, ObjPlayerHall.x - ObjPlayerHall.sprite_height - 10,StrCall)
