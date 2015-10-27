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

OverlordCreate now sets a globalvar currentLevel

Created FuncMess
- FuncMess is now responsible for Mess object instantiation 
- ScrMessPlace calls FuncMess from a switch(currentLevel), passing a level-specific value

ObjTimer now moves the player back into the Hallway when time runs out

Overlord sets messNum to the number of Mess Objects in a room.
- Checks to see if all objects have been collected.

ObjMessParent is now responsible for collision, and object destruction
- Decrements Overlord messNum on collision

Player is now prevented from exiting a room until all Mess Objects have been collected
- A message displays telling the player the room is not yet clean
- The player is moved out of collision range of the door

currentScore now increments when all Mess Items in a room are collected
- SCORE Macros have been created to set goals
- currentScore resets when a SCORE goal is reached

Basic escalation established
- currentGoal is set to SCORE n on Overlord create
- currentScore resets to 0 when each goal is reached
- New goal set when currentLevel increments

// July 28, 2015 //

Added a debug function
- Press "Q" key to display important information
- Uses Overlord Draw event

Moved Timer to the Hallway.
- Timer now starts counting down when player enters a room.
- Timer keeps track of current remaining time when player exits a room.
- Timer will keep counting while player enters multiple rooms
- Timer keeps counting until the level has completed

Timer resets when a level completes
Score now resets when player fails to successfully complete a level

Fixed issue where timer was stuck at LEVEL001
- Moved declaration and setting of levelTime to TimerRoomStart

Added spawn points for Mess Objects
- Removed full random spawn locations
- Mess objects now spawn at random spawn points
- Boolean added to prevent multiple spawns on a single point.

Created ObjUI to handle HUD and UI operations
- ScrHUD has been moved to the Draw event
- Other operations are suspended pending game development

Renamed ScrClueCreate to FuncClue
- FuncClue is called from MessPlace after FuncMess
- Takes one argument, Clue Type

Created ClueUI script to handle the UI functions related to clues
- Currently only displays a short message when a clue is found
- Triggered via a bool in ClueParent

// August 1, 2015 //

Rebuilt Debug as an object.
- Allows for debug functions
- Same UI details are still included

FuncMess has developed an intermittent bug where the spawn point search will return -4
- Lines 10-12
- A temporary fix can be implemented with a for loop.

Fixed FuncMess error
- Added a condition to the do-until statement verifying that spawnMess was not returning 'noone'

Removed show_message when player tries to leave an incomplete room
- Replaced with a UI draw_text

On-screen time remaining display added
- Uses ObjTimer
- ScrTimerUI draws the clock and label

Started working on giving player's options to respond to finding a clue

// August 04, 2015 // Bowser day

Built a rudementary score display
- Shows the current number of cleaned rooms
- Shows a messages when all rooms (currentGoal) have been cleaned

A message displays in the hallway showing the player which clues they have found
- Based on booleans clueLg, clueMd, clueSm in Overlord
- Only displays while in hallway

Moved the Score display
- Removed "HOUSEKEEPING" from in-room HUD
- Replaced with # of Cleaned Rooms

Added a JSON file to store Crime and clue data
- Still not functional

// August 06, 2015 //

JSON files are now being read properly.

Added three new spawn point types
- Created SpawnParent to hold mutual create event
- Altered FuncMess to use SpawnParent locations

// August 07, 2015 //

Created ObjEvidenceParent
- Created ObjEvidenceShirt
- Created placeholder sprite

Created system to direct players while searching for clues and evidence
- Draws a large circle originating at the Evidence
- Uses distance to Clues to determine its radius
- Disappears when no more clues are left in a room.

Created ScrEvidencePlace
- Uses RNG to pick rooms
- Places Evidence using SpawnParent

Disabled clue spawning from Overlord
- Commented out several lines in ScrMessPlace

Clues are now spawned only when a piece of evidence is present in a room
- ScrEvidencePlace is now presponsible for call FuncClue
- RNG in function call determines the number of clues spawned
- RNG in FuncClue determines which type of clue will spawn
- It's probably a good idea to replace a lot of this RNG with more real values soon

// August 08, 2015 //

Altered the function to spawn Evidence into a room
- Now calls EvidencePlace

Added a Create event to EvidenceParent
- Sets radius = 0

Adjusted EvidencePlace to receive an argument0
- checkTrue is now sent to the script
- Overlord sends it as irandom()
- DEBUG sends it as a 5

EvidencePlace now uses ds_grid to select which piece of evidence to spawn

EvidencePlace now calls FuncEvidence to spawn evidence
- Sends currentCrime as argument0
- FuncEvidence uses ds_grid to retrieve appropriate piece of evidence

EvidenceCOllect now increments currentCrime

// August 10, 2015 //

Added a new room FrontDesk
- MainMenu now exits to FrontDesk
- Adjusted ScrRoomExit to use new room

Moved player room change code from PlayerHallMove to ScrRoomExit

Disabled some UI and Debug functions

Moved Collisions Events for RoomDoor and EvidenceParent to PlayerRoom object
- Created EvidenceLMB to handle advanced collisions events
- Plans to make this a proper LMB Click handler

Player Collision with EvidenceNote now draws a note on screen

// August 11, 2015 //

Fixed the problem where clicking on a piece of evidence(note) would not cause it to draw to the screen
- Global LMB was resetting the drawNote bool
- Created MissionChecks to handle all variables related to missions
- Added noteFound bool, which is used to handle drawing of Note Evidence.

// August 13, 2015 //

Three pieces of Evidence now have LMB-Clicked responses.
- Shirt
- Docs
- Note
- Draw scaled-up images to the GUI

Shirt, Docs, & Note now spawn as a full set.
- FuncEvidence uses nested switch->if/else->choose to pick and place the correct item
- Moved control of [evidence]Found vars to Overlord

DEBUG_DRAW now tracks the status of these items

Created Spr,ObjClerk
- Placed in RoomFrontDesk
- Player Collision causes a mission briefing
- Mission briefings are based on currentCrime

Added MISSION000 and VICTORY000 macros

Player can now return to the Front Desk
- Elevator Spr/Obj has been created
- Script has been added to RoomExit

Collecting all pieces of evidence for a crime now causes a message to appear in the hallway

Spr/ObjPerson Created
- Spawns in RoomFrontDesk
- Serving as criminals/witnesses

Spr/ObjPerson expanded
- 2nd sprite
- Full, seperate Create script

Collecting all CRIME000 items now causes a single instance of ObjPerson to shift image_index in the FrontDesk

Interacting (collision) with a Person.isSpy creates a victory message
- VictoryUI script created
<<<<<<< HEAD

// August 14, 2015 //

Basic inventory system implemented
- When a piece of evidence is collected it displays in inventory

LMB Click on a piece of evidence now causes instance_destroy();

Inventory system abandoned
- Full implementation, with necessary functionality will require full code breakdown
- Uncommented, hardcoded values make the code too difficult to adapt
- Will try to find another system
=======
>>>>>>> parent of df646da... Inventory system added

// August 15, 2015 //

Inventory system rebuilt
- Determined the critical functions of yesterday's inventory attempt
- Inventory bar now follows player while in Hallway, FrontDesk

LMB Click on a Mess now collects it (Lost in Reversion)

Clicking on an item in the Inventory bar will now display it on screen

Solved issue where clicking on Inventory bar in Hallway was not displaying item.

Beginning state for currentCrime is now 999999
- State change to CRIME000 occurs when player first touches the clerk
- Evidence will not appear until currentCrime is set to CRIME000

Replaced the code in ScrTimerUI with code for a clock
- A clock now appears in all rooms
- Seconds:Minutes 1:1
- AM/PM rollover

CRIME000 spy only appears at Noon (12:00PM)
- Checks in place for Minutes, AM/PM

Clock tuned
- Proper AM/PM rollover @ 11:59, flickers for 1 second

// August 19, 2015 //

Started upgrading some of the game art
- Room Doors
- Elevator Doors
- Front Desk
- Clerk

// August 20, 2015 //

Added a walk cycle animation to SprPerson

Collecting Evidence using collision causes a fatal error
- LMB collection still works.

New Sprites, Objects
- Bed
- Toilet
- Counter
- Create script sets default to "dirty"
- LMB Script allows for object to be "cleaned"

New BG tiles
- Carpet
- Bathroom
- Shower
- Wall
- Metal
- Applied tiles to RoomSm

// August 21, 2015 //

Day (clock) set to always start at 09:00
- ObjUI Create Event

Players can no longer enter the elevator without an active mission
- A warning prompts them to talk to the front desk clerk

UI Coordinates centralized in ScrUICreate

Fixed (REALLY STUPID) bug where pressing up anywhere would enter a room

Changed the large Note from a draw_rectangle to scaled sprite
- draw_text moved appropriately

Front desk clerk now translates note once it has been found
- ClerkUI conditions added

// August 22, 2015 //

More art updates
- Night table
- Table
- Chairs

Adjusted x,y center points of all mess objects

Fixed the error which caused a crash when colliding with a piece of evidence
- ScrEvidenceLMB added with(other) before instance_destroy();

// August 25, 2015 //

Adjusted the font used for fontMessages

Added a background box behind the ClerkUI message

// August 31, 2015 //

Adjusted colour of font used in ClerkUI back to black

Converted background box values to variables set in UICreate

Created drawRect()
- Draws the white background box, with a black border
- Can be called from any UI script

UI Edits
- Background box to roundrect
- All standard UI text alignment to alignUI()

Overlord Room Start changes
- Mess Objects no longer spawn
- Spawn points moved to furniture and closet only

Evidence no longer spawns at random spawn points
- Spawns require an Object with RoomObjectLMB attached
- Spawns are generated at mouseX/Y
// Objects are occasionally not spawning on the first click, and occasionally not at all.//
// When not spawning they still register as collected.//

Fixed Evidence spawn error
- Incorrect variable setting in ClueUI

Evidence spawns randomly
- Only 1 in n clicks will spawn a piece of evidence
- EVIDENCERANDOMIZER created to balance n

Started rebuilding randomization system for room entry
- Started a "Do Not Disturb" warning system
// DND draw is technically functional, but experiencing numerous bugs //
// Draw only occurs on one door, and randomization of rooms must be moved //

// September 01, 2015 //

Do Not Disturb randomization implemented
- DND appearance functional on all doors
- Randomization of appearance set in Create Event
// All doors created at once mean appearance value always the same //
// Create sequence needs to be adjusted //

DND Randomization fully functional
- DND messages appear at random on doors
- PlayerStep now aquires the specific instance of ObjDoor with each collision

DND Doors no longer accessible
- Rooms which pop up a DND message cannot be entered
- RoomExit checks enterDoor T/F state

Adjusted TimerUI
- Removed "Current Time"
- Placed all x/y value settings in UI create
- Placed a white circle behind the time for clarity

Furniture randomization
- Furniture will be randomly be clean or dirty at room start
- Coinflip added to RoomObjectCreate to set image_index at creation
- All RoomObject Events moved to RoomParent

Large Room Rebuild
- Started adding new Room Objects and tiles to RoomLg
- HUD and UI elements will need to be repositioned

// September 02, 2015

Added mouse movement control
- Used window_mouse_get_x/y() and variable buffer
- Moving mouse to edges of the screen will cause player to move in corresponding direction
- Mouse control available in all rooms (FrontDesk, Hallway, Sm, Lg)

Door entry with mouse click
- PlayerHallMove checks for deviceLMBPressed
- RoomExit called when player clicks a door

HUD elements fixed to window
- New variables created for HUDbufferX/Y
- Use window width/weight +/- buffer to place HUD elements

// September 03, 2015 //

Evidence appearance in RoomLg
- Changed EvidencePlace to use window_view_mouse_get_x/y()
- Evidence now appears at correct LMB coordinates

Fonts
- New fonts added for Dialogue, Notes

// September 04, 2015 //

Basic intro message
- ScrIntroUI created
- Uses INTROMSG01
- Attempts to restrict player speed until message has been read were not successful
- Message needs work to correctly convey instructions

Intro message refined
- INTROMSG01 explains situation

Message display
- Messages no longer overlap in FrontDesk
- UI scripts check for showIntro before drawing

Victory conditions
- Reinstated victory condition
- Created new spy sprite
- drawRect() call added to VictoryUI
- Message overlap check added to ClerkUI

More messages added
- Shirt, Docs, Note show messages when found

Victory condition adjustment
- Player must now click on spy to trigger victory
- Clicking on spy destroys it

Added "Elevator" sign
- Placed above elevator doors in FrontDesk/Hallway

// September 05, 2015 //

Adjusted messages
- SHIRT000 adjusted to clarify purpose

Intro messages
- Rebuilt intro message system to allow for multiple screens
- Switch() used to check for current/total message state

Instructions
- Added navigtion instructions to the intro messages

Clerk speech
- Clerk is now click-to-talk

RoomLg
- Added exit
- Added more furniture
- More tiles
- Walls correctly blocked

// After some consultation with Jason some significant changes are being implemented //

RoomMain
- Replaces Hallway,Lg,Sm
- Top-down map of entire hotel floor
- Uses PlayerRoom

Player Navigation
- Player movement centralized to PlayerRoomMove
- RoomExit called with DoorParent LMBclick Event (No longer requires place_meeting)

// September 07, 2015 //

Started building pathfinding
- Started work on an mp_grid
- Several problems have arisen with mp_grid_create not building a grid of the correct size
- Many methods have been tried to resolve this, so far none have been successful

// September 08, 2015 //

Basic pathfinding implemented
- Hallway level
- Click to move

// September 12, 2015 //

Movement adjusted
- Removed edge movement from RoomMain

Adjusted view
- Centered RoomMain view on player

Adjusted collision
- Reduced instance count of objBarrier in RoomMain
- Increased scaleX,Y of remaining objBarrier

Cleaning objects
- Player must now have Line-of-Sight to an object to clean it
- RoomObjectLMB given collision_line() condition

Debug functions
- Added debug function to spawn a spy using the "Enter" key

// October 24, 2015 //

New inventory system started
- Uses ds_maps rather than basic arrays
- Basic adding, removing items functioning

Draw script updated
- Items now draw inside appropriate boxes on inventory screen

Created Parent object for object pickup
- Collision with player adds child item to inventory
- Will need variables to hold Key and Value of child

Created test child object for object pickup
- Created create script for PickupParent, with Key,Value variables
- Variables can be set in Create event of child

// October 26, 2015 //

Beginning to remove "Spy" theme from game
- Removed Game intro messages, and reading requirements
    The code is still available, and perhaps could be reimplemented
    with a new theme.
- Movement is now available immediately

Clues have been effectively removed
- Removed ClueCreate, Collect scripts. Items will still spawn when
    cleaning rooms, but they no longer serve a purpose.
- The object can be repurposed later

Several old functions removed
- FuncMess, Clue, MessPlace have all been removed. These functions
    no longer serve a purpose, and/or have duplicate functionality
    elsewhere in the programme.
    
Clean-up
- Removed ScrCall, which was a long holdover from an earlier version
    also added important comments in two scripts: EvidencePlace
    and MissionChecks, on how they can be repurposed.
    
// October 27, 2015 //

Beginning to add resource management
- Repurposing EvidenceParent to serve as a clickable object
    which can easily add items to inventory
    
Inventory system adjustments
- Made adjustments to ItemAdd to allow for item numbers to be
    increased in the ds_map. Also EvidenceLMB now checks for a numeric
    value before deleting an object.
