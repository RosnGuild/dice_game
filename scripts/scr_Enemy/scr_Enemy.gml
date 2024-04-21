// Functions for working with Enemy entities.

/// @function					enemy_generate_move_number(_enemy_name, _move_num);
/// @param {string}	_enemy_name	Name of the enemy.
/// @param {real}	_move_num	Value rolled.
/// @description				Returns a random move number from an enemy's move_list, optionally modified by an added number n. HELPER FUNCTION FOR choose_move().
function enemy_choose_move(_enemy_name, _move_num){
	return global.enemy_move_data[? _enemy_name][? _move_num];
}

/// @function							enemy_get_dice_size(_enemy_id);
/// @param {Id.Instance}	_enemy_id	id of the enemy.
/// @description						Returns the size of the dice the enemy should roll to determine its potential moves.
function enemy_get_dice_size(_enemy_id) {
	return ds_map_size(global.enemy_move_data[? _enemy_id.name]);
}

/// @function							enemy_generate_move_number(_enemy_name, _move_num);
/// @param {Id.Instance}	_enemy_id	The id of the enemy.
/// @param {real}			_n			Optional: Modifier to the roll.
/// @description						Returns a random move number from an enemy's move_list. Optionally modified by an added number n.
function enemy_generate_move_number(_enemy_id, _n = 0){
	var _enemy_name = _enemy_id.name;
	var _dice_size = enemy_get_dice_size(_enemy_id);
	
	return_value = irandom_range(1, _dice_size);
	if (return_value <= _dice_size - _n) {
		return_value = min(return_value + _n, _dice_size);
	}
	return(return_value);
}

/// @function							add_bolster(_enemy_id);
/// @param {Real}	_bolster_value		Value to increase Bolster status of all enemies by.
/// @description						Increases Bolster status by the given value (default 1).
function add_bolster(_bolster_value = 1) {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    instance_find(obj_Enemy, i).status_bolster_value += 1;
		show_debug_message("enemy: {0} has been bolstered to {1}", instance_find(obj_Enemy, i), instance_find(obj_Enemy, i).status_bolster_value);
	}
}

/// @function								decrement_bolster(_enemy_id);
/// @param {Id.Instance}	_enemy_id		The id of the enemy.
/// @description							Decreases given entity's bolster value by 1, to a minimum of 0.
function decrement_bolster(_enemy_id) {
	_enemy_id.status_bolster_value = max(_enemy_id.status_bolster_value - 1, 0);
}

/// @function								enemy_handle_bolster(_enemy_id, _dice_number);
/// @param {Id.Instance}	_enemy_id		The id of the enemy.
/// @param {Id.Instance}	_dice_number	The rolled number to be modified.
/// @description							Returns the given dice_num, modified by Bolster (if applicable).
function enemy_handle_bolster(_enemy_id, _dice_number) {
	return min(enemy_get_dice_size(_enemy_id), _dice_number + min(_enemy_id.status_bolster_value, 1));
}

/// @function							add_scry(_enemy_id, _scry_value);
/// @param {Id.Instance}	_enemy_id	The id of the enemy.
/// @param {Real}			_scry_value	Value to increase Scry status of the enemy by.
/// @description						Increases Bolster status by the given value (default 1).
function add_scry(_enemy_id, _scry_value = 1) {
	_enemy_id.status_scry_value += _scry_value;
}

/// @function								decrement_scry(_enemy_id);
/// @param {Id.Instance}	_enemy_id		The id of the enemy.
/// @description							Decreases given entity's Scry value by 1, to a minimum of 0.
function decrement_scry(_enemy_id) {
	_enemy_id.status_scry_value = max(_enemy_id.status_scry_value - 1, 0);
}

/// @function						get_enemy_upcoming_description(_name, _dice_roll);
/// @description					Returns a full description of the upcoming enemy action.
function get_enemy_upcoming_description() {
	var _final_string = string("Rolled a " + string(move_number));
	
	// Appends additional dice rolls if the enemy rolls 2+ dice each round.
	if (actions_per_round > 1) {
		for (var i = 1; i < actions_per_round; ++i) {
		    _final_string = string(_final_string + " & " + string(enemy_handle_bolster(id, upcoming_move_numbers[i-1])));
		}
	}
	
	// Appends Bolster information.
	if (status_bolster_value > 0) {
	    _final_string = string(_final_string + " (+1, Bolstered)");
	}
	
	_final_string = string(_final_string + "\n Next Turn: " + enemy_move_get_description(name, move_number));
	
	// Appends additional move descriptions if the enemy rolls 2+ dice each round.
	if (actions_per_round > 1) {
	    for (var i = 1; i < actions_per_round; ++i) {
		    _final_string = string(_final_string + "\n" + enemy_move_get_description(name, string(enemy_handle_bolster(id, upcoming_move_numbers[i-1]))));
		}
	}
	
	return _final_string;
}

/// @function		enemy_setup_initial_move_numbers();
/// @description	Creates and populates a list of move numbers for an enemy, to be drawn upon for each upcoming turn.
function enemy_setup_initial_move_numbers() {
	upcoming_move_numbers = [];
	for (var i = 0; i < 6; ++i) {
	    array_push(upcoming_move_numbers, enemy_generate_move_number(id));
	}
	move_number = array_shift(upcoming_move_numbers);
}

/// @function							enemy_update_move_numbers(_enemy_id);
/// @param {Id.Instance}	_enemy_id	The id of the enemy.
/// @description						Sets move_number to the next value in upcoming_move_numbers, and repopulates upcoming_move_numbers.
function enemy_update_move_number(_enemy_id) {
	_enemy_id.move_number = enemy_handle_bolster(_enemy_id, array_shift(_enemy_id.upcoming_move_numbers));
	show_debug_message("SET NEW ENEMY MOVE NUMBER TO: " + string(_enemy_id.move_number));
	array_push(_enemy_id.upcoming_move_numbers, enemy_generate_move_number(_enemy_id));
}