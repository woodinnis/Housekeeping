/*
*   Creation code for the Fade in/out object
*/
var XGrowthFactor, YGrowthFactor;
image_alpha=0;
x=0;
y=0;
image_xscale=room_width;
image_yscale=room_height;
visible=true;
alarm[0]=1;

// Enumerator for fade states
enum inOut{
    out = 0,
    in = 1,
    kill = 2};

// Set default Fade state
fadeState = inOut.out;
