if image_alpha < 1
{
    image_alpha += 0.03; 
    alarm[0]=1;
}
else
{
    instance_destroy();
    room_goto(destinationRoom);
}
