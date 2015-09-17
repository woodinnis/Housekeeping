// Code to perform when the player collects a piece of evidence

// Move on to the next crime in the sequence of investigations
switch(currentCrime)
{
    case CRIME000:
    {
//        if(shirtFound && docsFound && noteFound)
//        currentCrime = CRIME001;
        break;
    }
    case CRIME001:
    {
        currentCrime = CRIME002;
        break;
    }
    case CRIME002:
    {
        currentCrime = CRIME003;
        break;
    }
    case CRIME003:
    default:
    {
        //currentCrime = CRIME000;
        break;
    }
}

// Destroy the current instance of the object
with(other)
    instance_destroy();
