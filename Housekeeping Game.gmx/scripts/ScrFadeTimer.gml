/*
*   Actions to perform on a timer call of the Fade object
*
*   Uses fadeState for the base of a state machine.
*/
switch(fadeState)
{
    // Fade out
    case inOut.out:
    {
        if(image_alpha < 1)
        {
            image_alpha += 0.02; 
            alarm[0]=1;
        }
        else    // Reset the state for fading in
        {
            room_goto(destinationRoom)
            fadeState = inOut.in;
            image_alpha = 1;
        }
        break;
    }
    // Fade in
    case inOut.in:
    {
        if(image_alpha > 0)
        {
            image_alpha -= 0.02;
            alarm[0]=1;
        }
        else    // Reset the state for fading out
        {
            fadeState = inOut.out;
            image_alpha = 0
        }
            
        break;
    }
    // Kill the fader
    default:
    {
        instance_destroy();
        break;
    }
}
