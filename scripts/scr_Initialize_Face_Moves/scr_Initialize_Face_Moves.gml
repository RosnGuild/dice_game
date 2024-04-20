// Creates a globally accessible map that stores all player move data. 
// Access a move and its components with ds_map_find_value(global.move_data, "move name")[movedata_DATA].

// Tag definitions. 
#macro BASE_BLOCK 5
#macro BASE_HIT 6
#macro BASE_VULNERABLE 1
#macro BASE_BLEED 5

#macro UNCOMMON_BLOCK 2 * BASE_BLOCK
#macro UNCOMMON_STRIKE 2 * BASE_HIT
#macro UNCOMMON_VULNERABLE 2 * BASE_VULNERABLE
#macro UNCOMMON_BLEED 2 * BASE_BLEED

#macro RARE_BLOCK 3 * BASE_BLOCK
#macro RARE_STRIKE 3 * BASE_HIT
#macro RARE_VULNERABLE 3 * BASE_VULNERABLE
#macro RARE_BLEED 3 * BASE_BLEED

//---
// Map and struct-based implementation of the move database. Accessed with ds_map_find_value(global.move_data_alternative, [move name string]

// Use use these to access player moves.
#macro face_move_DEFAULT "Default"
#macro face_move_STRIKE "Strike"
#macro face_move_BLOCK "Block"
#macro face_move_TRIP "Trip"
#macro face_move_SLICE "Slice"

// Use these to index into the list that each move name maps to.
#macro movedata_RARITY 0
#macro movedata_COOLDOWN 1
#macro movedata_TARGET_TAGS 2
#macro movedata_SELF_TAGS 3

// Use these as keys in a move struct to get its tags.
#macro tag_HIT "hit"
#macro tag_BLOCK "block"
#macro tag_BURN "burn"
#macro tag_VULNERABLE "vulnerable"
#macro tag_BLEED "bleed"

enum RARITY {
	COMMON,
	UNCOMMON,
	RARE,
	VERY_RARE,
	LEGENDARY,
	TESTING
};

global.move_data = ds_map_create(); // Creates the globally accessible move map.

/// @function						move_create(_name, _rarity, _target_tags, _self_tags);
/// @param {string}	_name			The name of the move.
/// @param {string}	_rarity			The move's rarity.
/// @param {real}	_cooldown		The move's cooldown.
/// @param {struct}	_target_tags	Tags to be applied to a target.
/// @param {struct}	_self_tags		Tags to be applied to the self.
/// @description					Adds a new move to the global.move_data database.
function move_create(_name, _rarity, _cooldown, _target_tags = {}, _self_tags = {}) {
	ds_map_add(global.move_data, _name, [_rarity, _cooldown, _target_tags, _self_tags]);
}

move_create(face_move_DEFAULT, RARITY.TESTING, 1, {}, {}); // TESTING MOVE
move_create(face_move_STRIKE, RARITY.COMMON, 1, {tag_HIT : BASE_HIT});
move_create(face_move_BLOCK, RARITY.COMMON, 1, {}, {tag_BLOCK : BASE_BLOCK});
move_create(face_move_TRIP, RARITY.COMMON, 1, {tag_VULNERABLE : BASE_VULNERABLE});
move_create(face_move_SLICE, RARITY.COMMON, 1, {tag_BLEED : BASE_BLEED});