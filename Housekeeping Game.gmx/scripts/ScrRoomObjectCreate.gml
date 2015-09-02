// Set the object's starting properties

// RNG for coin flip
isClean = irandom(ISCLEANSET);

// If even, object starts as clean
if((isClean mod 2) == 0)
    image_index = 0;
else
    image_index = 1;

// Object is not animated
image_speed = 0;
