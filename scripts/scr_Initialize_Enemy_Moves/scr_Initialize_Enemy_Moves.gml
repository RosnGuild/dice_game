// Creates a globally accessible 3D array that stores all enemy move data. 
// Access a move and it's components with global.enemy_move_data[enemyid_NAME][DICEROLL][movedata_NAME/HIT/BLOCK].

// Enemy definitions
#macro enemyid_IMP "Imp"
#macro enemyid_BIG_IMP "The Big Imp"
#macro enemyid_PURPLE_IMP "Purple Imp"
#macro enemyid_BLUE_IMP "Blue Imp"
#macro enemyid_DR_D6 "Dr. d6"
#macro enemyid_ZOMBIE "Zombie"
#macro enemyid_GEORGE "George the Ogre"
#macro enemyid_DUMMY "Dummy"

// Use these to index into the list that each move name maps to.
#macro enemymovedata_TARGET_TAGS 0
#macro enemymovedata_SELF_TAGS 1

// Use these as keys in a move struct to get its tags.
#macro tag_REROLL "reroll"
#macro tag_BOLSTER "bolster"
#macro tag_CALL_IMP "call imp"
#macro tag_HIT_PER_IMP "hit per imp" // currently unimplemented
#macro tag_HEAL_IMPS "heal imps"

global.enemy_move_data = ds_map_create(); // Creates the globally accessible enemy move map.

/// @function						enemy_move_create(_name, _dice_roll, _target_tags, _self_tags);
/// @param {string}	_name			The name of the enemy.
/// @param {real}	_dice_roll		Dice roll associated with this move.
/// @param {struct}	_target_tags	Tags to be applied to a target.
/// @param {struct}	_self_tags		Tags to be applied to the self.
/// @description					Adds a new move to the global.enemy_move_data database.
function enemy_move_create(_name, _dice_roll, _target_tags, _self_tags = {}) {
	if !ds_map_exists(global.enemy_move_data, _name)
	{
		ds_map_add(global.enemy_move_data, _name, ds_map_create());
	}
	ds_map_add(ds_map_find_value(global.enemy_move_data, _name), _dice_roll, [_target_tags, _self_tags]);
}

// Imp
enemy_move_create(enemyid_IMP, 1, {tag_HIT : 6});
enemy_move_create(enemyid_IMP, 2, {tag_HIT : 6, tag_REROLL: true});
enemy_move_create(enemyid_IMP, 3, {}, {tag_BOLSTER : true});
enemy_move_create(enemyid_IMP, 4, {tag_BURN : 1});

// Big Imp
enemy_move_create(enemyid_BIG_IMP, 1, {}, {tag_BLOCK : 6});
enemy_move_create(enemyid_BIG_IMP, 2, {tag_HIT_PER_IMP : 5});
enemy_move_create(enemyid_BIG_IMP, 3, {tag_HIT_PER_IMP : 5});
enemy_move_create(enemyid_BIG_IMP, 4, {}, {tag_HEAL_IMPS : 3});

// Purple Imp
enemy_move_create(enemyid_PURPLE_IMP, 1, {}, {tag_BLOCK : 4});
enemy_move_create(enemyid_PURPLE_IMP, 2, {}, {tag_BLOCK : 4});
enemy_move_create(enemyid_PURPLE_IMP, 3, {tag_HIT : 6});
enemy_move_create(enemyid_PURPLE_IMP, 4, {}, {tag_HEAL_IMPS : 3});

// Blue Imp
enemy_move_create(enemyid_BLUE_IMP, 1, {}, {tag_BLOCK : 10});
enemy_move_create(enemyid_BLUE_IMP, 2, {}, {tag_BLOCK : 10});
enemy_move_create(enemyid_BLUE_IMP, 3, {}, {tag_BLOCK : 10});
enemy_move_create(enemyid_BLUE_IMP, 4, {tag_BLEED : 8});

// Doctor d6
enemy_move_create(enemyid_DR_D6, 1, {}, {tag_BOLSTER : true});
enemy_move_create(enemyid_DR_D6, 2, {}, {tag_BOLSTER : true});
enemy_move_create(enemyid_DR_D6, 3, {}, {tag_BOLSTER : true});
enemy_move_create(enemyid_DR_D6, 4, {}, {tag_HEAL_IMPS : 6});
enemy_move_create(enemyid_DR_D6, 5, {}, {tag_HEAL_IMPS : 6});
enemy_move_create(enemyid_DR_D6, 6, {}, {tag_HEAL_IMPS : 6});

// George the Ogre
enemy_move_create(enemyid_GEORGE, 1, {}, {tag_BOLSTER : 1});
enemy_move_create(enemyid_GEORGE, 2, {}, {tag_HIT : 10});


//show_debug_message("FUCK: {0}", global.enemy_move_data);
//show_debug_message("HEY SHITASS: {0}", global.enemy_move_data[? "Imp"]);
//show_debug_message("HEY SHITASS: {0}", global.enemy_move_data[? "Imp"][? 1]); //this one
//show_debug_message("HEY SHITASS: {0}", array_get(global.enemy_move_data[? "Imp"][? 1], 0));
//show_debug_message("HEY SHITASS: {0}", array_get(global.enemy_move_data[? "Imp"][? 1], 1));

//Dummy
enemy_move_create("Dummy", 1, {});

// show_debug_message("FUCK: " + string(enemy_move_get_description("Imp", 2)));

//show_debug_message("DOES THE LINE WORK for 1?: {0}", move_is_attack("Imp", 1));
//show_debug_message("DOES THE LINE WORK for 2?: {0}", move_is_attack("Imp", 2));
//show_debug_message("DOES THE LINE WORK for 3?: {0}", move_is_attack("Imp", 3));
//show_debug_message("DOES THE LINE WORK for 4?: {0}", move_is_attack("Imp", 4));