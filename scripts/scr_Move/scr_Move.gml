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

/// @function						move_tags_get_description(_tags);
/// @param {struct}	_tags			A struct of a move's tags, either those directed at self or at a target.
/// @param {String}	_name			The enemy's name.
/// @description					HELPER FUNCTION for move description getters. Generates and returns a String describing a move's effects.
function move_tags_get_description(_tags, _name = undefined) {
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
			case tag_BOLSTER:
				_display_string = string_concat(_display_string, "Bolster Enemies");
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
			_display_string = string(_display_string + " " + string(_value));
		}
		
		if (i+1 != _tags_size) {
			_display_string = string(_display_string + ", ");
		}
	}
	return _display_string;
}

/// @function						get_hovered_adjacent_move_names(_face_node);
/// @description					HELPER FUNCTION for move description getters. Generates and returns a String describing the names of the two upcoming face nodes.
function get_hovered_adjacent_move_names(_face_node) {
	var _display_string = "";
	var _adjacent_nodes = _face_node.adjacent_nodes;
	
	for (var i = 0; i < array_length(_adjacent_nodes); i++) {
		_display_string = string_concat(_display_string, player_move_get_description(_adjacent_nodes[i]));
		if (i+1 != array_length(_adjacent_nodes)) {
			_display_string = string_concat(_display_string, ", ");
		}
	}
	return _display_string;
}

//show_debug_message("FUCK: " + string(move_tags_get_description(move_get_target_tags("Strike"))));
//show_debug_message("FUCK: " + string(move_get_target_tags("Strike")));