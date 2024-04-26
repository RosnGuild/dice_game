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

/// @function							enemy_generate_round_numbers(_enemy_name, _move_num);
/// @param {Id.Instance}	_enemy_id	The id of the enemy.
/// @param {real}			_n			Optional: Modifier to the roll.
/// @description						Returns a list of all move numbers for the enemy to do in a round. Optionally modified by an added number n.
function enemy_generate_round_numbers(_enemy_id, _n = 0){
	var _actions_for_round = [];
	for (var i = 0; i < _enemy_id.actions_per_round; ++i) {
		array_push(_actions_for_round, enemy_generate_move_number(_enemy_id, _n));
	}
	return(_actions_for_round);
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

/// @function						get_enemy_upcoming_description();
/// @description					Returns a full description of the upcoming enemy action(s).
function get_enemy_upcoming_description() {
	var _description = enemy_describe_upcoming_one_round(current_move_numbers);
	if (status_scry_value == 1 && actions_per_round == 1) {
	    _description = _description + "\n--Scrying Next Roll--\n";
	} else if (status_scry_value > 1) {
		_description = _description + "\n--Scrying Next Rolls--\n";
	}
	for (var i = 0; i < status_scry_value; ++i) {
	    _description = _description + enemy_describe_upcoming_one_round(upcoming_move_numbers[i], i+1)
	}
	return _description;
}

/// @function						enemy_describe_upcoming_one_round(_dice_values);
/// @param {Array}	_dice_values	Array of rolled dice values, corresponding to enemy moves to be performed this round.
/// @param {Real}	_is_scry		Optional. The number of rounds in the future that this description is for. If 1+, Bolster is ignored. 0 by default.
/// @description					Returns a description of an enemy's actions for a single round.
function enemy_describe_upcoming_one_round (_dice_values, _is_scry = 0) {
	var _description = "";
	if (_is_scry == 0) {
	    _description = string("Rolled a " + string(_dice_values[0]));
	}
	else {
	    _description = string("Rolls a " + string(_dice_values[0]));
	}
	
	for (var i = 1; i < array_length(_dice_values); ++i) {
	    _description = _description + " & " + string(_dice_values[i]);
	}
	
	if (status_bolster_value > 0 && _is_scry == 0) {
		_description = string(_description + " (+1, Bolstered)");
	}
	
	if (_is_scry == 0) {
	    _description = string(_description + "\n Next Turn: ");
	}
	else {
	    _description = string(_description + ": ");
	}
	
	for (var i = 0; i < array_length(_dice_values); ++i) {
		_description = string(_description + enemy_move_get_description(id.name, _dice_values[i]) + "\n");
	}
	return _description;
}

/// @function		enemy_setup_initial_move_numbers();
/// @description	Creates and populates a list of lists of move numbers for an enemy, to be drawn upon for each upcoming turn. Each sub-list is the size of the enemy's actions_per_round.
function enemy_setup_initial_move_numbers() {
	upcoming_move_numbers = [];
	for (var i = 0; i < 6; ++i) {
	    array_push(upcoming_move_numbers, enemy_generate_round_numbers(id));
	}
	current_move_numbers = array_shift(upcoming_move_numbers);
}

/// @function							enemy_update_upcoming_move(_enemy_id);
/// @param {Id.Instance}	_enemy_id	The id of the enemy.
/// @description						Sets current_move_numbers to the next value in upcoming_move_numbers, and repopulates upcoming_move_numbers.
function enemy_update_upcoming_move(_enemy_id) {
	_enemy_id.current_move_numbers = array_shift(_enemy_id.upcoming_move_numbers)
	for (var i = 0; i < array_length(_enemy_id.current_move_numbers); ++i) {
	    _enemy_id.current_move_numbers[i] = enemy_handle_bolster(_enemy_id, _enemy_id.current_move_numbers[i]);
	}
	show_debug_message("SET NEW ENEMY MOVE NUMBERS TO: " + string(_enemy_id.current_move_numbers) + string(_enemy_id.upcoming_move_numbers));
	
	array_push(_enemy_id.upcoming_move_numbers, enemy_generate_round_numbers(_enemy_id));
}

/// @function							enemies_heal_all(_heal_value, _enemy_name);
/// @param {Real}		_heal_value		The amount of healing.
/// @param {string}		_enemy_name		Optional: Name of the enemy.
/// @description						Heals all enemies, optionally only enemies with a certain name.
function enemies_heal_all(_heal_value, _enemy_name = undefined) {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
		var _current_enemy = instance_find(obj_Enemy, i);
		if (_current_enemy.name == _enemy_name || _enemy_name = undefined) {
		    entity_heal(_current_enemy, _heal_value);
		}
	}
}

/// @function								hit_per_enemy(_target_id, _enemy_name, _damage_value, _ignore_block);
/// @param {Id.Instance}	_target_id		The id of the target.
/// @param {String}			_enemy_name		The name of the enemy.
/// @param {Real}			_damage_value	Amount of damage.
/// @param {bool}			_ignore_block	Optional: Whether the damage should be reduced by the entity's Block status. (Defaults to false)
/// @description							Hits entity for a certain amount of damage, for each enemy with a general name (i.e. "Imp" counts both Imps and Big Imps).
function hit_per_enemy(_target_id, _enemy_name, _damage_value, _ignore_block = false) {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
		var _current_enemy = instance_find(obj_Enemy, i);
		if (string_pos(_enemy_name, _current_enemy.name) != 0) {
		    take_damage(_target_id, _damage_value, _ignore_block);
		}
	}
}