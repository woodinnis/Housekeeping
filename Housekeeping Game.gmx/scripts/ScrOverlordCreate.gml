randomize();

// Variables for the HUD to keep track of cleaning
messCollected = true;    //false;   // Boolean for HUD use, set to true when the first ObjMess is collected
messNum = 0;             // Used for HUD to count total number of ObjMess collected by the player
messType = "";           // Used for setting the image index of ObjMessLg/Md/Sm
messVar = "";            // Used for setting the image index of ObjMessLg/Md/Sm

debugPressed = false;

// Game level variable
globalvar currentLevel;
globalvar currentScore;
currentLevel = LEVEL001;    // Set Starting level to 001
currentScore = 0;           // Set Starting score to 0;

currentGoal = SCORE001;     // Set Starting goal

enteredRoom = false;        // Checkin to see if the player has entered a room

lvlNum = 1.0;

// Clue placement variables
clue = 0;           // Used when pulling level information out of the game data file
clueType = "";      // Used for setting the image index of ObjClue
clueVar = "";       // Used for setting the image index of ObjClue

// Open file containing ObjClue coordinates

ini_open("ClueCoords.ini");
