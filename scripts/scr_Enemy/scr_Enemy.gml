// Functions for working with Enemy entities.

/// @function					enemy_generate_move_number(_enemy_name, _move_num);
/// @param {string}	_enemy_name	Name of the enemy.
/// @param {real}	_move_num	Value rolled.
/// @description				Returns a random move number from an enemy's move_list, optionally modified by an added number n. HELPER FUNCTION FOR choose_move().
function enemy_choose_move(_enemy_name, _move_num){
	return global.enemy_move_data[? _enemy_name][? _move_num];
}

/// @function					enemy_generate_move_number(_enemy_name, _move_num);
/// @param {string}	_enemy_name	The name of the enemy.
/// @param {real}	_n			Optional: Modifier to the roll.
/// @description				Returns a random move number from an enemy's move_list, optionally modified by an added number n.
function enemy_generate_move_number(_enemy_name, _n = 0){
	num_moves = ds_map_size(global.enemy_move_data[? _enemy_name]);
	
	return_value = irandom_range(1, num_moves);
	
	if (return_value <= num_moves - _n) {
		return_value = min(return_value + _n, num_moves);
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