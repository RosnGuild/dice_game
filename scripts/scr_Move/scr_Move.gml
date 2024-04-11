// Scripts for applying and handling all tags to an entity.

// Handles decrementing all cooldowns
function cooldown_handler(){
	
}

// Applies incoming damage to an enemy during the enemy_select phase.
function apply_hit(_entity_id, _value) {
	_entity_id.incoming_hit_value += _value
}

// Handles incoming damage to an enemy during the hit phase.
function hit_handler(_entity_id) {
	take_damage(_entity_id, _entity_id.incoming_hit_value);
	_entity_id.incoming_hit_value = 0;
}

// Applies incoming block to an enemy during the block phase.
function apply_block(_entity_id) {
	add_block(_entity_id, _entity_id.incoming_block_value);
	_entity_id.incoming_block_value = 0;
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
	
	var _self_tags_string = move_tags_get_description(_self_tags);
	var _target_tags_string = move_tags_get_description(_target_tags);
	
	if (string_length(_target_tags_string) > 0 && string_length(_self_tags_string) > 0) {
	    return string("Upcoming: " + _target_tags_string + " | " + _self_tags_string)
	} 
	return string("Upcoming: " + _target_tags_string + _self_tags_string);
}

/// @function						move_tags_get_description(_tags);
/// @param {struct}	_tags			A struct of a move's tags, either those directed at self or at a target.
/// @description					HELPER FUNCTION for move description getters. Generates and returns a String describing a move's effects.
function move_tags_get_description(_tags) {
	var _display_string = "";
	var _tags_names = struct_get_names(_tags);
	var _tags_size = struct_names_count(_tags);

	var keys = struct_get_names(_tags);
	for (var i = 0; i < _tags_size; i++) {
		switch (keys[i]) {
		    case tag_HIT:
		        _display_string = string_concat(_display_string, "Hit");
		        break;
			case tag_BLOCK:
				_display_string = string_concat(_display_string, "Block");
				break;
			case tag_BURN:
				_display_string = string_concat(_display_string, "Burn");
				break;
			case tag_BOLSTER_ALLIES:
				_display_string = string_concat(_display_string, "Bolster Allies");
				break;
			case tag_REROLL:
				_display_string = string_concat(_display_string, "Reroll");
				break;
		    default:
				show_debug_message("ERROR: Attempted to parse tag ( {0} ) that doesn't exist!", keys[i]);
		        break;
		}
		var _value = struct_get(_tags, keys[i])
		if (_value != true) {
			_display_string = string_concat(_display_string, string(" {0}", _value));
		}
		
		if (i+1 != _tags_size) {
			_display_string = string_concat(_display_string, ", ");
		}
	}
	return _display_string;
}

//show_debug_message("FUCK: " + string(move_tags_get_description(move_get_target_tags("Strike"))));
//show_debug_message("FUCK: " + string(move_get_target_tags("Strike")));