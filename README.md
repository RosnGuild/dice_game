# dice_game
 
dice_game is a turn based deckbuilding game where your deck is composed of the faces of a d20. This readme assumes familiarity with the GameMaker UI.

Overworld_Map
    To edit the overworld map, you need to access files in several locations. First, open the rooms folder in the resource browser, and open the Overworld_Room. Inside, there are two types of objects. goto_Room buttons, and Overworld_Arrows. To change the layout of the overworld, there are a few steps
        1. create new goto_Room buttons by duplicating the parent button for each new game room you want to place, and editing the onclick method in it's create event to point to your new room. See Rooms for information on creating new game rooms.
        2. Place the buttons in the shape you want in the Overworld room, and edit their step_number variables to match the order in which the player can access them. 1 is the first room, counting up as high as necessary. Rooms the same number of steps deep on different paths should share the same step_number.
        3. Place overworld_arrows between them as appropriate, and edit their step_number variables to match the button that they point *too*.
Rooms
    There are three main types of rooms in the game. Battle_Rooms, Loot_Rooms, and Choice_Rooms.

    Battle_Room:
        Battle_Rooms should be duplicated from an existing Battle_Room. The only edit necessary for a new one is deleting the old enemy_objects, and replacing them with new ones. See Entities for more information on Enemies.

    Loot_Room:
        All loot rooms should inherit from Loot_Room_1. No changes are necessary, just duplicate it. If specific loot in the room is desired, edit it's create event to set one or more of the 
        global.room_loot_# variables to a specific value, rather than the default random values.

    Choice_Room
        Not yet implemented.

Entities