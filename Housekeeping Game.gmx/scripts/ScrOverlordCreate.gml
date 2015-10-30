randomize();

// Variables for the HUD to keep track of cleaning
globalvar cleanCount;
messCollected = true;    // Boolean for HUD use, set to true when the first ObjMess is collected
cleanCount = 0;          // Used for HUD to count total number of Obj collected by the player
messType = "";           // Used for setting the image index of ObjMessLg/Md/Sm
messVar = "";            // Used for setting the image index of ObjMessLg/Md/Sm
drawNotClean = false;
clockTick = 0;


// Game level variable
globalvar currentLevel;
globalvar shiftTime;
globalvar totalCash;
currentLevel = LEVEL001;    // Set Starting level to 001
shiftTime = SHIFTTIME01;      // Set Shift length the player has to work (in minutes)
totalCash = STARTCASH;      // Set the amount of money available to the player at game start


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

// UI variables
drawSolution = false
demoVictory = false;

drawShirt = false;
drawDocs = false;
drawNote = false;

introRead = false;
showIntro = 00;

clerkSpeak = false;

// System Variables
globalvar isPaused;
isPaused = false;
