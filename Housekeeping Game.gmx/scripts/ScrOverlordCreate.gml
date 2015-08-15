randomize();

// Variables for the HUD to keep track of cleaning
messCollected = true;    //false;   // Boolean for HUD use, set to true when the first ObjMess is collected
messNum = 0;             // Used for HUD to count total number of ObjMess collected by the player
messType = "";           // Used for setting the image index of ObjMessLg/Md/Sm
messVar = "";            // Used for setting the image index of ObjMessLg/Md/Sm
drawNotClean = false;
clockTick = 0;


// Game level variable
globalvar currentLevel;
globalvar currentScore;
globalvar currentCrime;
currentLevel = LEVEL001;    // Set Starting level to 001
currentScore = 0;           // Set Starting score to 0;
currentCrime = 999999;      // Set Starting crime the player is inventigating

currentGoal = SCORE001;     // Set Starting goal

enteredRoom = false;        // Checkin to see if the player has entered a room

lvlNum = 1.0;

// Clue placement variables
clue = 0;           // Used when pulling level information out of the game data file
clueType = "";      // Used for setting the image index of ObjClue
clueVar = "";       // Used for setting the image index of ObjClue
clueFound = false;

// Clue checklist
clueLg = false;
clueMd = false;
clueSm = false;

// UI variables for Evidence
drawSolution = false
demoVictory = false;

drawShirt = false;
drawDocs = false;
drawNote = false;
