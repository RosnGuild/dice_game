// Creates a globally accessible map that stores all player move data. 
// Access a move and its components with ds_map_find_value(global.move_data, face_move_NAME)[movedata_DATA].

// Tag definitions. 
#macro BASE_BLOCK 5
#macro BASE_HIT 6
#macro BASE_VULNERABLE 1
#macro BASE_BLEED 5
#macro BASE_SCRY 1
#macro BASE_PURGE 1
#macro BASE_STUN 1 // Scales 1:1:2
#macro BASE_BURN 6

#macro UNCOMMON_BLOCK 2 * BASE_BLOCK
#macro UNCOMMON_HIT 2 * BASE_HIT
#macro UNCOMMON_VULNERABLE 2 * BASE_VULNERABLE
#macro UNCOMMON_BLEED 2 * BASE_BLEED
#macro UNCOMMON_SCRY 2 * BASE_SCRY
#macro UNCOMMON_PURGE 2 * BASE_PURGE
#macro UNCOMMON_STUN BASE_STUN
#macro UNCOMMON_BURN 2 * BASE_BURN

#macro RARE_BLOCK 3 * BASE_BLOCK
#macro RARE_HIT 3 * BASE_HIT
#macro RARE_VULNERABLE 3 * BASE_VULNERABLE
#macro RARE_BLEED 3 * BASE_BLEED
#macro RARE_SCRY 3 * BASE_SCRY
#macro RARE_PURGE 3 * BASE_PURGE
#macro RARE_STUN 2 * BASE_STUN
#macro RARE_BURN 3 * BASE_BURN

//---
// Map and struct-based implementation of the move database.

// Move name declarations. Use use these to access player moves.
#macro face_move_DEFAULT "Default"
#macro face_move_STRIKE "Strike"			// 1
#macro face_move_BLOCK "Block"				// 2
#macro face_move_TRIP "Trip"				// 3
#macro face_move_SLICE "Slice"				// 4
#macro face_move_PORTENT "Portent"			// 5
#macro face_move_ANTIDOTE "Antidote"		// 6
#macro face_move_DAZE "Daze"				// 7
#macro face_move_RANDOMIZE "Randomize"		// 8
#macro face_move_FIREBOLT "Firebolt"		// 9

#macro face_move_SMASH "Smash"				// 1
#macro face_move_BRACE "Brace"				// 2
#macro face_move_OPENER "Opener"			// 3
#macro face_move_DEEP_CUT "Deep Cut"		// 4
#macro face_move_DIVINATION "Divination"	// 5
#macro face_move_CLEANSE "Cleanse"			// 6
#macro face_move_STAGGER "Stagger"			// 7
#macro face_move_FIREBALL "Fireball"		// 8
#macro face_move_SHIELD_BASH "Shield Bash"	// 9
#macro face_move_BLOODY_BLOW "Bloody Blow"	// 10
#macro face_move_BURNING_BLOW "Burning Blow"// 11
#macro face_move_STUNNING_STRIKE "Stunning Strike"// 12
#macro face_move_REBALANCE "Rebalance"		// 13
#macro face_move_RISKY_BLOW "Risky Blow"	// 14

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
#macro tag_SCRY "scry"
#macro tag_PURGE "purge"
#macro tag_STUN "stun"
#macro tag_REROLL "reroll"

enum RARITY {
	STARTER,
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

// Move Definitions
// Common Moves
move_create(face_move_DEFAULT, RARITY.TESTING, 2, {tag_BLEED : 1, tag_BURN : 1, tag_BOLSTER : 1, tag_BLOCK : 1, tag_SCRY : 1, tag_BLEED : 1, tag_VULNERABLE : 1, tag_STUN : 1}, {}); // TESTING MOVE
move_create(face_move_STRIKE, RARITY.STARTER, 2, {tag_HIT : BASE_HIT});
move_create(face_move_BLOCK, RARITY.STARTER, 2, {}, {tag_BLOCK : BASE_BLOCK});
move_create(face_move_TRIP, RARITY.COMMON, 2, {tag_VULNERABLE : BASE_VULNERABLE});
move_create(face_move_SLICE, RARITY.COMMON, 2, {tag_BLEED : BASE_BLEED});
move_create(face_move_PORTENT, RARITY.COMMON, 2, {tag_SCRY : BASE_SCRY});
move_create(face_move_ANTIDOTE, RARITY.COMMON, 2, {}, {tag_PURGE : BASE_PURGE});
move_create(face_move_DAZE, RARITY.COMMON, 5, {tag_STUN : BASE_STUN});
move_create(face_move_RANDOMIZE, RARITY.COMMON, 1, {tag_REROLL : true});
move_create(face_move_FIREBOLT, RARITY.COMMON, 1, {tag_BURN : BASE_BURN});

// Uncommon Moves
move_create(face_move_SMASH, RARITY.UNCOMMON, 3, {tag_HIT : UNCOMMON_HIT});
move_create(face_move_BRACE, RARITY.UNCOMMON, 5, {tag_BLOCK : UNCOMMON_BLOCK});
move_create(face_move_OPENER, RARITY.UNCOMMON, 3, {tag_VULNERABLE : UNCOMMON_VULNERABLE});
move_create(face_move_DEEP_CUT, RARITY.UNCOMMON, 3, {tag_BLEED : UNCOMMON_BLEED});
move_create(face_move_DIVINATION, RARITY.UNCOMMON, 3, {tag_SCRY : UNCOMMON_SCRY});
move_create(face_move_CLEANSE, RARITY.UNCOMMON, 3, {}, {tag_PURGE : UNCOMMON_PURGE});
move_create(face_move_STAGGER, RARITY.UNCOMMON, 3, {tag_STUN : UNCOMMON_STUN});
move_create(face_move_FIREBALL, RARITY.COMMON, 1, {tag_BURN : UNCOMMON_BURN});

move_create(face_move_SHIELD_BASH, RARITY.UNCOMMON, 3, {tag_HIT : BASE_HIT}, {tag_BLOCK : BASE_BLOCK});
move_create(face_move_BLOODY_BLOW, RARITY.UNCOMMON, 3, {tag_HIT : BASE_HIT, tag_BLEED : BASE_BLEED});
move_create(face_move_BURNING_BLOW, RARITY.UNCOMMON, 3, {tag_HIT : BASE_HIT, tag_BURN : BASE_BURN});
move_create(face_move_STUNNING_STRIKE, RARITY.UNCOMMON, 3, {tag_HIT : BASE_HIT, tag_STUN : BASE_STUN})
move_create(face_move_REBALANCE, RARITY.UNCOMMON, 3, {tag_PURGE : RARE_PURGE}, {tag_HIT : 1});
move_create(face_move_RISKY_BLOW, RARITY.UNCOMMON, 3, {tag_HIT : RARE_HIT}, {tag_HIT : BASE_HIT});