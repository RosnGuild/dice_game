// Functions for working with Enemy entities.

// Returns a random move from an enemy's move_list, optionally modified by an added number n.
function choose_move(_move_list, _n = 0){
	num_moves = array_length(_move_list);
	
	return_value = random_range(0, num_moves);
	
	if (return_value <= num_moves - _n) {
		return_value += _n;
	}
	
	return(return_value);
}

