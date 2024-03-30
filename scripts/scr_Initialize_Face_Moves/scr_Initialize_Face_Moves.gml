// Creates a globally accessible 2D array that stores all player move data. 
// Access a move and it's components with global.move_data[moveid_NAME][movedata_NAME/HIT/BLOCK].


// Move definitions
#macro moveid_STRIKE 0
#macro moveid_BLOCK 1

// Use these to index into a move entry to get its components.`
#macro movedata_NAME 0
#macro movedata_HIT 1
#macro movedata_BLOCK 2

// Tag definitions. 
#macro BASE_BLOCK 5
#macro BASE_HIT 6

#macro UNCOMMON_BLOCK 2 * BASE_BLOCK
#macro UNCOMMON_STRIKE 2 * BASE_HIT

#macro RARE_BLOCK 3 * BASE_BLOCK
#macro RARE_STRIKE 3 * BASE_HIT

global.move_data = 
[	//Name		Hit			Blk
    ["Strike",	BASE_HIT,	0],
    ["Block",	0,			BASE_BLOCK],
    // ...and so on.
]

//---
// Map and struct-based implementation of the move database. Accessed with ds_map_find_value(global.move_data_alternative, [move name string]

// Use these to index into the list that each move name maps to.
#macro move_RARITY 0
#macro move_TARGET_TAGS 1
#macro move_SELF_TAGS 2

// Use these as keys in a move struct to get its tags.
#macro tag_HIT "hit"
#macro tag_BLOCK "block"

enum RARITY {
	COMMON,
	UNCOMMON,
	RARE,
	VERY_RARE,
	LEGENDARY
};

global.move_data_alternative = ds_map_create(); // Creates the globally accessible move map.

/// @function						move_create(_name, _target_tags, _self_tags);
/// @param {string}	_name			The name of the move.
/// @param {string}	_rarity			The move's rarity.
/// @param {struct}	_target_tags	Tags to be applied to a target.
/// @param {struct}	_self_tags		Tags to be applied to the self.
/// @description					Adds a new move to the global.move_data database.
function move_create(_name, _rarity, _target_tags, _self_tags = {}) {
	ds_map_add(global.move_data_alternative, _name, [_rarity, _target_tags, _self_tags]);
}

move_create("Strike", RARITY.COMMON, {tag_HIT : BASE_HIT});
move_create("Block", RARITY.COMMON, {}, {tag_BLOCK : BASE_BLOCK});


/// @function				move_get_rarity(_name);
/// @param {string}	_name	The name of the move.
/// @description			Returns the rarity of a move. 0 being Common, 1 being Uncommon, etc.
function move_get_rarity(_name) {
	return ds_map_find_value(global.move_data_alternative, _name)[move_RARITY];
}

/// @function				move_get_target_tags(_name);
/// @param {string}	_name	The name of the move.
/// @description			Returns a struct of the move's tags to be done to a target.
function move_get_target_tags(_name) {
	return ds_map_find_value(global.move_data_alternative, _name)[move_TARGET_TAGS];
}

/// @function				move_get_self_tags(_name);
/// @param {string}	_name	The name of the move.
/// @description			Returns a struct of the move's tags to be done to self.
function move_get_self_tags(_name) {
	return ds_map_find_value(global.move_data_alternative, _name)[move_SELF_TAGS];
}