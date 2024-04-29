![Dice Jail logo](https://github.com/RosnGuild/dice_game/assets/123116659/978e792f-efd4-4bc3-aece-96aa3134fcc2)

# Escape from Dice Jail
 
Escape from Dice Jail is a turn based deckbuilding game where your deck is composed of the faces of a d20. This readme assumes familiarity with the GameMaker UI.

## Overworld_Map
To edit the overworld map, you need to access files in several locations. First, open the rooms folder in the resource browser, and open the Overworld_Room. Inside, there are two types of objects. goto_Room buttons, and Overworld_Arrows. To change the layout of the overworld, there are a few steps:

1. **create new goto_Room buttons** by duplicating the parent button for each new game room you want to place, and editing the onclick method in it's create event to point to your new room. See Rooms for information on creating new game rooms.
2. **Place the buttons** in the shape you want in the Overworld room, and edit their step_number variables to match the order in which the player can access them. 1 is the first room, counting up as high as necessary. Rooms the same number of steps deep on different paths should share the same step_number.
3. **Place overworld_arrows** between them as appropriate, and edit their step_number variables to match the button that they point *too*.
Rooms

## Rooms
There are three main types of rooms in the game. Battle_Rooms, Loot_Rooms, and Choice_Rooms.

### Battle_Room:
Battle_Rooms should be duplicated from an existing Battle_Room. The only edit necessary for a new one is deleting the old enemy_objects, and replacing them with new ones. See Entities below for more information on Enemies.

### Loot_Room:
All loot rooms should inherit from Loot_Room_1. No changes are necessary, just duplicate it. If specific loot in the room is desired, edit its create event to set one or more of the global.room_loot_# variables to a specific value, rather than the default random values.

### Choice_Room
Not yet implemented.

## Entities
There are two types of entities: the player and enemies.

### Player
TEXT HERE.

### Enemies
All enemies consist of two components: an enemy object and several stored moves corresponding to that enemy, which are created and stored in the scr_Initialize_Enemy_moves script. To create a new enemy, first create its moves, as follows:
1. Open scr_Initialize_Enemy_moves, in the Scripts > Face and Move Scripts folder.
2. Add a macro that you'll use to reference this enemy later. Under the Enemy Defintions header towards the top, enter the following:
    #macro enemyid_YOUR_NAME "Your Display Name"
Replace YOUR_NAME and "Your Display Name" with your enemy name.
3. Create a new comment header for your enemy's moves towards the bottom 
(like: // Example Name).
4. Under that header, enter each move in a new line. The format is as follows: 

        enemy_move_create(_name, _dice_roll, _target_tags, _self_tags);

    _name: the enemyid macro you made in #2.
    
    _dice_roll: the dice value the enemy would have to roll to do this move. On its turn, the enemy rolls dice with a maximum value equal to the number of moves it has.
    
    _target_tags: a struct of all tags the enemy will do to the player
    
    _self_tags: a struct of all tags the enemy will do to itself/its allies

For information on formatting tag structs, see the Move Tags section.
            
Second, create the enemy object itself. Create a new child object of obj_Enemy, and give it a sprite. In its variable definitions, configure the following:
1. **name.** Enter the string that you set the enemyid macro (that you created earlier) equal to.
2. **current_hp and max_hp.** These should be identical, and represent the enemy's health. The baseline is between 14-50.
3. **actions_per_round.** The number of actions/moves the enemy should do each round. Usually this should be 1, but stronger enemies and boss do several actions each round. In game terms, this is how many dice the enemy rolls and checks against their move list.

Finally, drag the enemy object into any battle rooms you want it to appear in.

## Faces
Across the player dice, there are 20 faces. These are stored in an array. Each face contains a Move name: a string which corresponds to a move (an entry in a database that describes how the face behaves).
    
    KAI CHECK THIS
    
To create new move options for the player to use, you must create the move data, add it to the move database, and then insert it into the potential pool of moves that faces generated in Loot Rooms can contain.

### Creating Player Move Data
1. Open Scripts > Face and Move Scripts > scr_Initialize_Player_Moves
2. Add a macro that you'll use to reference this move later. Under the Move Name Declarations header towards the top, enter the following:
    
        #macro face_move_YOUR_NAME "Your Display Name"

    Replace YOUR_NAME and "Your Display Name" with the new move's name. 
    
    Macros for Common moves are grouped at the top, Uncommon moves under those, and rarer moves (currently unimplemented but the infrastructure is there) under those.

3. Under the Move Definitions header and corresponding rarity sub-header, enter your new move in a new line. The format is as follows: 
    
        move_create(_name, _rarity, _cooldown, _target_tags, _self_tags);

    _name: the face_move macro you made in #2.
    
    _rarity: the move's rarity, which is a rating of its general power. Currently most moves are either common or uncommon. Use the RARITY enum, so enter RARITY.COMMON for Common moves, RARITY.UNCOMMON for Uncommon moves, etc.

    _cooldown: how many turns before the move can be used again. Usually 1 (which means it can't be used until the next turn).
    
    _target_tags: a struct of all tags to be applied to a target
    
    _self_tags: a struct of all tags to be applied to the player

For information on formatting tag structs, see the Moves section.

## Moves 
The data that dictates what a move actually does, for both Player and Enemy moves, is two structs, which contain special macros called tags, each with a corresponding value.

For example, Strike has the tag Hit 6 (written in the struct as "tag_HIT : BASE_HIT", where BASE_HIT has been predefined to be 6).

The first struct are all tags to be applied to an external target entity. 
- **For player moves,** this is the enemy that the player clicks. IF THIS STRUCT IS NOT EMPTY, A TARGET AUTOMATICALLY MUST BE SELECTED FOR THE MOVE TO BE PERFORMED.
- **For enemy moves,** this is automatically the player.

The second struct are all tags to be applied to the entity doing the move.
- **For player moves,** this is automatically the player.
- **For enemy moves,** this is automatically the enemy, BUT some tags are stored here but instead apply to all entities. When this happens, it is handled within the implementation for that specific tag.

### Executing a move
When a player selects a face (and potentially a target), that face is fed into the parse_face function of the scr_Face_Parser. If the player has the remaining actions to perform the face, either:

- If the face's target_tags struct **is** empty, the face's move is extracted and fed into scr_Move_Parser's parse_move function.
- If it **isn't** empty, then the move is only fed into the move_parser once an enemy is selected.

When an enemy performs a move, the move is parsed without any further checking.

#### Parsing a Move

When a move is run through parse_move, each struct is iterated through. For each tag, a function is called, passing in the id of whatever entity that tag was applied to. As such, most of these functions are stored in scr_Entity, but some are in scr_Enemy if only enemies could be targeted by them.

### Creating Tags
Each tag has a corresponding macro declared in either 
