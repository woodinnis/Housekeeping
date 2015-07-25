
// Variables for the HUD to keep track of cleaning
messCollected = false;   // Boolean for HUD use, set to true when the first ObjMess is collected
messCount = 0;           // Used in the ScrMessPlace script to distribute ObjMess
messNum = 0;             // Used for HUD to count total number of ObjMess collected by the player
messType = "";           // Used for setting the image index of ObjMessLg/Md/Sm
messVar = "";            // Used for setting the image index of ObjMessLg/Md/Sm

// Game level variable

lvlNum = 1.0;

// Clue placement variables
strLevel = "";      // 
strClueType = "";   // Used in ScrCluePlace to hold an asset index for instance_create()
clue = 0;           // Used when pulling level information out of the game data file
clueType = "";      // Used for setting the image index of ObjClue
clueVar = "";       // Used for setting the image index of ObjClue

// Open file containing ObjClue coordinates

ini_open("ClueCoords.ini");
