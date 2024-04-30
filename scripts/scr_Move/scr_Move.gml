// Scripts for applying and handling all tags to an entity.

// Handles decrementing all cooldowns
function cooldown_handler(){
	
}

// apply_poison()
// handle_poison()

/// @function						player_move_get_description(_name);
/// @param {string}	_name			The name of the move.
/// @description					Generates and returns a String describing a move's effects.
function player_move_get_description(_name) {
	var _self_tags = move_get_self_tags(_name);
	var _target_tags = move_get_target_tags(_name);
	
	var _self_tags_string = move_tags_get_description(_self_tags);
	var _target_tags_string = move_tags_get_description(_target_tags);
	
	if (string_length(_target_tags_string) > 0 && string_length(_self_tags_string) > 0) {
	    return string(_target_tags_string + " | " + _self_tags_string)
	} 
	return string(_target_tags_string + _self_tags_string);
}

/// @function						enemy_move_get_description(_name, _dice_roll);
/// @param {string}	_name			The name of the enemy.
/// @param {real}	_dice_roll		Dice roll associated with this move.
/// @description					Generates and returns a String describing a move's effects.
function enemy_move_get_description(_name, _dice_roll) {
	var _self_tags = move_get_self_tags(_name, _dice_roll);
	var _target_tags = move_get_target_tags(_name, _dice_roll);
	
	var _self_tags_string = move_tags_get_description(_self_tags, _name);
	var _target_tags_string = move_tags_get_description(_target_tags, _name);
	
	if (string_length(_target_tags_string) > 0 && string_length(_self_tags_string) > 0) {
	    return string(_target_tags_string + " | " + _self_tags_string)
	} 
	return string(_target_tags_string + _self_tags_string);
}

/// @function						move_get_detailed_description(_name, _dice_roll);
/// @param {string}	_name			The name of the move/enemy.
/// @param {real}	_dice_roll		Optional: Dice roll associated with this move.
/// @description					Generates and returns a String describing the effects of each tag in the move.
function move_get_detailed_description(_name, _dice_roll = undefined) {
	var _self_tags = move_get_self_tags(_name, _dice_roll);
	var _target_tags = move_get_target_tags(_name, _dice_roll);
	
	var _self_tags_string = move_tags_get_detailed_description(_self_tags, _name);
	var _target_tags_string = move_tags_get_detailed_description(_target_tags, _name);
	
	return string(_target_tags_string + _self_tags_string);
}

/// @function						move_tags_get_description(_tags);
/// @param {struct}	_tags			A struct of a move's tags, either those directed at self or at a target.
/// @param {String}	_name			Optional: The enemy's name.
/// @description					HELPER FUNCTION for move description getters. Generates and returns a String describing a move's effects.
function move_tags_get_description(_tags, _name = undefined) {
	var _display_string = "";
	var _tags_names = struct_get_names(_tags);
	var _tags_size = struct_names_count(_tags);

	var keys = struct_get_names(_tags);
	for (var i = 0; i < _tags_size; i++) {
		var _value = struct_get(_tags, keys[i])
		switch (keys[i]) {
		    case tag_HIT:
			case tag_BLOCK:
			case tag_BURN:
			case tag_VULNERABLE:
			case tag_BLEED:
			case tag_SCRY:
			case tag_PURGE:
		        _display_string = string_concat(_display_string, string_upper_case_first(keys[i]));
		        break;
			case tag_BOLSTER:
				_display_string = string_concat(_display_string, "Bolster EnemiesFALSE");
				break;
			case tag_REROLL:
				_display_string = string_concat(_display_string, "RerollFALSE");
				break;
			case tag_HIT_PER_IMP:
				_display_string = string_concat(_display_string, "Hit " + string(_value) + " Per ImpFALSE");
				break;
			case tag_HEAL_IMPS:
				_display_string = string_concat(_display_string, "Heal Imps");
				break;
		    default:
				show_debug_message("ERROR: Attempted to parse tag ( {0} ) that doesn't exist!", keys[i]);
		        break;
		}
		if (string_ends_with(_display_string, "FALSE")) {
			_display_string = string_replace(_display_string, "FALSE", "");
		} else {
			_display_string = string(_display_string + " " + string(_value));
		}
		
		if (i+1 != _tags_size) {
			_display_string = string(_display_string + ", ");
		}
	}
	return _display_string;
}

/// @function						move_tags_get_detailed_description(_tags);
/// @param {struct}	_tags			A struct of a move's tags, either those directed at self or at a target.
/// @param {String}	_name			Optional: The enemy's name.
/// @description					HELPER FUNCTION for move detailed description getters. Generates and returns a String describing a move's tag's effects.
function move_tags_get_detailed_description(_tags, _name = undefined) {
	var _display_string = "";
	var _tags_names = struct_get_names(_tags);
	var _tags_size = struct_names_count(_tags);

	var keys = struct_get_names(_tags);
	for (var i = 0; i < _tags_size; i++) {
		switch (keys[i]) {
		    case tag_HIT:
				_display_string = string_concat(_display_string, "Hit X: Deals X damage to a single target.\n");
		        break;
			case tag_BLOCK:
				_display_string = string_concat(_display_string, "Block X: Reduces all damage by X for one round.\n");
		        break;
			case tag_BURN:
				_display_string = string_concat(_display_string, "Burn X: Deals X damage each time target does something, then X decreases by 1.\n");
		        break;
			case tag_VULNERABLE:
				_display_string = string_concat(_display_string, "Vulnerable X: Doubles damage target takes for X rounds.\n");
		        break;
			case tag_BLEED:
				_display_string = string_concat(_display_string, "Bleed X: Deals X damage at the end of target's turn, then X decreases by 1.\n");
		        break;
			case tag_SCRY:
		        _display_string = string_concat(_display_string, "Scry X: See what target will do for X future turns. Ignores Bolster.\n");
		        break;
			case tag_BOLSTER:
				_display_string = string_concat(_display_string, "Bolster X: +1 to dice rolls for X rounds, making enemies more dangerous.\n");
		        break;
			case tag_REROLL:
				_display_string = string_concat(_display_string, "Reroll: Rotates your dice to a random side.\n");
		        break;
			case tag_HIT_PER_IMP:
				_display_string = string_concat(_display_string, "Hit Per Imp X: Deals X damage per alive Imp.\n");
				break;
			case tag_HEAL_IMPS:
				_display_string = string_concat(_display_string, "Heal Imps X: All Imps recover X health.\n");
				break;
			case tag_PURGE:
				_display_string = string_concat(_display_string, "Purge X: Decreases Burn and Bleed by X.\n");
				break;
		    default:
				show_debug_message("ERROR: Attempted to parse tag ( {0} ) that doesn't exist!", keys[i]);
		        break;
		}
	}
	return _display_string;
}

/// @function				move_get_rarity(_name);
/// @param {string}	_name	The name of the move.
/// @description			Returns the rarity of a move. 0 being Common, 1 being Uncommon, etc.
function move_get_rarity(_name) {
	return ds_map_find_value(global.move_data, _name)[movedata_RARITY];
}

/// @function							move_get_target_tags(_name);
/// @param {string}	_name				Name of the move (or enemy).
/// @param {real}	_enemy_dice_roll	Optional: Dice value rolled by enemy.
/// @description						Returns a struct of the move's tags to be done to a target.
function move_get_target_tags(_name, _enemy_dice_roll = undefined) {
	if (_enemy_dice_roll != undefined) {
	    return array_get(global.enemy_move_data[? _name][? _enemy_dice_roll], 0);
	}
	
	return ds_map_find_value(global.move_data, _name)[movedata_TARGET_TAGS];
}

/// @function							move_get_self_tags(_name);
/// @param {string}	_name				The name of the move (or enemy).
/// @param {real}	_enemy_dice_roll	Optional: Dice value rolled by enemy.
/// @description						Returns a struct of the move's tags to be done to self.
function move_get_self_tags(_name, _enemy_dice_roll = undefined) {
	if (_enemy_dice_roll != undefined) {
		//show_debug_message("THE OUTPUT WAS A " + string(_enemy_dice_roll));
	    return array_get(global.enemy_move_data[? _name][? _enemy_dice_roll], 1);
		//var _enemy_move_map = ds_map_find_value(global.enemy_move_data, _name);
		//return ds_map_find_value(_enemy_move_map, _enemy_dice_roll)[1];
	}
	
	return ds_map_find_value(global.move_data, _name)[movedata_SELF_TAGS];
}

/// @function							move_is_attack(_name, _move_number);
/// @param {string}	_name				The name of the move (or enemy).
/// @param {real}	_enemy_dice_roll	Optional: Dice value rolled by enemy.
/// @description						Returns TRUE if move is an attack, FALSE otherwise.
function move_is_attack(_name, _enemy_dice_roll = undefined) {
	return struct_names_count(move_get_target_tags(_name, _enemy_dice_roll)) != 0;
}

/// @func						string_upper_case_first(str)
/// @param {string}    _str		String of text
/// @desc						Returns a string with the first character capitalized.
/// This function was based on one sourced from GMLscripts.com, link is https://www.gmlscripts.com/script/string_ucfirst
function string_upper_case_first(_str) {
    var _output = string_upper(string_char_at(_str, 1));
    _output += string_copy(_str, 2, string_length(_str) - 1);
    return _output;
}