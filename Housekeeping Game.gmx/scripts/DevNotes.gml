/*

//July 10 2014//

Prototype 1 - "Housekeeping" Started

Created four rooms
- RoomMenu (Starting Room)
- RoomHallway (Primary navigation room)
- RoomRoomSm (Small template room for primary gameplay)
- RoomRoomLg (Large template room for primary gameplay)

Created Hallway player sprite and object (SprPlayerHall, ObjPlayerHall)

Created primary movement scripts for player navigation in Rooms (ScrPlayerRoomMove)

//July 11 2014//

Created a movement script for player navigation in hallways (ScrPlayerHallMove)

Created an initialization script for the player (ScrPlayerCreate)

Created a new, smaller, player sprite and object for rooms (SprPlayerRoom, ObjPlayerRoom)

Created a clue object (ObjClueLg) to start testing player interactions
- Will not immediately be testing player interactions

Created Overlord (ObjOverlord) to maintain gamewide functions and variables

Added collision functionality to ScrPlayerRoomMove

Added collision functionality to ScrPlayerHallMove

Created door sprite and object (SprDoor, ObjDoor)
- Door will also serve as teleport/transition object from RoomHallway to RoomRoomSm/Lg

Added teleportation (room_goto) function to ScrPlayerHallMove.
- Player can now press UP or W while in front of a door, and enter a room
- The player only needs to have minor contact with the door, I'd like to force the player
    to stand fully in front of the door.

Created door sprite and object (SprRoomDoor, ObjRoomDoor) for rooms
- Added teleportation (room_goto) functionality with a collision event and (ScrRoomExit)

Added a random number generator to ScrPlayerCreate 
- I wanted to randomize the x-coord spawn of the player when they leave a room.
- This currently also randomizes the x-coord of player spawn inside rooms.
- This was solved using if(room == RoomHallway)

Added a door to the large room

Entering a door now rondomly selects a large or small room to teleport the player to
- Used a random number and modulus 2

Created sprites and objects for Small, Medium, and Large Clues
- SprClueSm/Md/Lg ObjClueSm/Md/Lg
- Renamed previous Clue object to ObjClueParent

Added creation script for clue objects.
- randomizes spawn position
- attached to all Clue child objects

Placed clue objects into both small and large rooms to begin writing and testing
    player interaction code

Created a Clue collection script (ScrClueCollect)
- Attached to ObjClueParent
- Destroys instance of ObjClueSm/Md/Lg on collision with player

Created a Textbox sprite (SprTextBox)

// July 13 2014 //

Created HUD script (ScrHUD)
- Attached to Overlord Draw event

Attempted to draw a textbox on the bottom left of the screen.
- Tested script in multiple objects and events
- Unable to pinpoint problem with what appears to be the correct code
- Currently commented out in ScrHUD

Attempted to add a pop-up text "HOUSEKEEPING" on player collision with a door
- Created ScrCall to handle the event
- Have not figured out how to make draw_text() work outside of Draw event
- Tested in collision events of both ObjDoor and ObjPlayerHall with no success

Created mess sprites and objects (SprMessLg/Md/Sm, ObjMessLg/Md/Sm)
- Will use the code currently attached to ObjClue to spawn randomly in rooms
- Will write new code to create a series of spawn coordinates for ObjClue to
    use to create rooms of increasing difficulty and complexity
    
// July 14 2014 //

Solved textbox positioning problem
- Used sprite_get_height
- Still appearing behind most objects
- Currently attached to ObjOverlord Draw event. Would like to either attach to a
    collision event, or hide until needed.
    
Created a textbox object (ObjTxtBox)
- Using only a sprite was not proving effective.
- Assigned SprTextBox
- Has been placed in a folder with ObjOverlord

// July 15 2014 //

Added spawn function for ObjTxtBox
- instance_create in ScrClueCollect
- Text box spawns, but does not move with player.
- Adjusted depth to -1100, no longer spawning behind other objects.

Attempted to randomize the ObjMess spawn
- Used both a for and a while loop
- I think one of these will work, but I have not yet executed it correctly


//Priorities//
HUD
TextBox/menu

// July 16 2014 //

Added a Room number display to the HUD
- Only displays while inside a room
- Designed to change from room to room
- Currently fixed to "Room 100" for testing purposes

Duplicated the Clue scriptset (ScrClueCrate,ScrClueCollect) to make separate Mess scripts
- ScrMessCreate, ScrMessCollect
- Realized I needed too many different functions that could not simply be shared.

Collecting ObjMessSm/Md/Lg in any room now tallies in the HUD

Attempted to draw text on top of ObjTxtBox
- Using draw events of ObjClueParent appear to prevent ObjClueSm/Md/Lg from being drawn
- The Parent is still spawned, and all events are functional
- Using if() and object_get_name() has not yielded a successful result

Found and added what seems like a better method for menu execution (ObjMenu)
- http://gmc.yoyogames.com/index.php?showtopic=363980
- Will be adapting this to function within the game environment.
- Several variables will need to be adjusted but initial tests are positive
- Adjusted depth of ObjMenu to appear above Player

Set spawn and follow functions for menu
- Collision event in ObjPlayerRoom now runs m_create() to spawn a menu to the right of the player
- Step event in ObjMenu track x and y coords of ObjPlayerRoom to follow the player

// Priorities //
Menu options
Menu scripts cleanup

// July 17 2014 //

Cleaned up Menu scripting
- fixed spacing
- semi-colons added
- replaced "and" with && operator in two locations

On advice of James King, removed found menu script and started development of new menu mechanic
- Removed events triggering m_ scripts
- Removed events triggering in-objects scripts calling m_ scripts

// July 22 2014//

Added ScrMessPlace to distribute ObjMess in the rooms.
- Attached to the Room Start event of ObjOverlord.
- Used random number generators to choose both count and size
- used a for loop to distribute the ObjMess

Cleaned up unused objects and scripts

Edited and revised in-line comments

Added ClueCoords.ini to contain set coordinates for clues.
- Used two sets of coordinates to test incrementing levels
- Successfully tested level progression

Created and placed a background for the small room
- Adjusted the grid size to 16x16 for more precise placement of objects
- Adjusted the sprite size of SprBarrier to 16x16 for finer blocking volumes

Added key to ClueCoords.ini for ObjClue size
- The Room Enter event of ObjOverlord reads ClueCoords.ini for the size key
- The same event is now responsible for instance_create of all clues

// Priorities //

Clue Menu Entries
- What to do?
- What does each entry do?

Level progression
- Immediatly after each clue collection?
- After n clues?
- Complete the correct number/set of menu selections?

File entries for each level

// July 23 2014 //

Designed new menu to be used with ObjClue
- Assigned to SprTextBox
- Includes menu entries
- Slightly smaller X dimension

Added rollover descriptors for each menu item
- Each message reflects the consequences of the menu action
- Level progression will be determined by the menu selections of the player

Added level progression by menu selections
- Each menu selection increments or decrements ObjOverlord.lvlNum
- Level progression no longer takes place in ScrClueCollect
- ScrClueCreate generates a random set of X,Y coordinates to act as defaults
  in the event of a non-existant level entry
  
Added sections to txtBoxMouse to clear menu and rollover descriptions from the screen.

Added a background to RoomRoomLg
- Reduced grid size to 16x16
- Blocking volumes in place
- Adjusted location of ObjRoomDoor to match background

// Priorities //

Create Main Menu
- Game Instructions
- Game Start
- Appropriate theme

HUD
- Fix room # randomization
- Create some sort of underlay (art)

Find art
- All clues
- All mess
- Both Player sprites

// July 24 2014 //

Started work on Main Menu
- Added background (BGMainMenu)
- Added two buttons (ObjBtnPlay, ObjBtnHelp)

Added Mouse.Leftpressed events to both Main Menu buttons
- ObjBtnPlay executes ScrRoomExit placing the player randomly in RoomRoomHallway
- ObjBtnHelp executes ScrBtnHelp opens a message window with basic instructions

Fixed an issue where ObjPlayer was sometimes spawning slightly offscreen in the hallway
- Added while(!place_empty) to ScrPlayerCreate

Fixed room number randomization
- Moved randomization code to ObjOverlord.RoomStart

Added basic underlay for HUD

Fixed an issue where ObjMess objects were spawning in inaccessable areas

An unidentifiable error has occurred wherein the player can only enter
   two rooms maximum before the game freezes.
   this error began to manifest immediately after implementation of the 
   ObjMess spawning fix documented above.
   
James King has assisted me is repairing the freeze.
- ScrMessCreate was getting stuck in a while loop.
- An exit system was created with a countdown to failure

Alpha now seems fully functional

A boolean (hasBeenTouched) has been added to ScrClueCreate
- ScrClueCollect now tests to see if a clue has been touched
- hasBeenTouched is used to replace a clue when the player chooses menu option 1

Clicking menu option 1 in txtBoxMouse now returns the clue object to the room
- hasBeenTouched used to prevent reinstancing of the menu
- coordinates of the clue passed through overlord


// July 31 2014 //

Added Sprites for ObjPlayer
- Created L/R facing sprites for ObjPlayerHall and adjusted ScrPlayerHallMove accordingly

Added sprites for all ObjMess
- Added randomization of messType to ScrMessPlace
- sprite_index changes in ScrMessCreate

Added sprites for all ObjClue
- Added randomization of clueType to ScrCluePlace
- sprite_index changes in ScrClueCreate


============================================================================================

// July 27, 2015 //

Begin Mentor Studio DevLog Entries
==================================

Created a GitHub repository

Created a timer object, and added it to the Overlord group.
- Create, Alarm, and Step scripts all created
- Scripts tested, but still in prototype

Created 10 macros LEVEL001 to LEVEL010 holding timer values (in seconds)
