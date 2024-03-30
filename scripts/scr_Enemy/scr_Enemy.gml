// Functions for working with Enemy entities.

// Returns a random move from an enemy's move_list, optionally modified by an added number n.
function choose_move(_enemy_name, _n = 0){
	var _move_num = generate_move_number(_enemy_name, _n)
	return global.enemy_move_data[? _enemy_name][? _move_num]
}

/// @function					generate_move_number(_enemy_name);
/// @param {string}	_enemy_name	The name of the enemy.
/// @param {real}	_n			Optional: Modifier to the roll.
/// @description				Returns a random move number from an enemy's move_list, optionally modified by an added number n. HELPER FUNCTION FOR choose_move().
function generate_move_number(_enemy_name, _n = 0){
	num_moves = ds_map_size(global.enemy_move_data[? _enemy_name]);
	
	return_value = irandom_range(1, num_moves);
	
	if (return_value <= num_moves - _n) {
		return_value = min(return_value + _n, num_moves);
	}
	return(return_value);
}