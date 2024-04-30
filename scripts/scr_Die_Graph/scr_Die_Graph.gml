// Functions for working with the player die face graph.

// Returns current player face number
function get_current_player_face_number(){
	return global.current_player_face_number;
}

// Sets the current player face to a random face.
function set_random_player_face() {
	global.pending_player_face_number = irandom_range(1, 20);
	update_current_face_number();
	global.current_player_face_move = global.die_graph_array[global.current_player_face_number-1];
}

// Returns the array of faces adjacent to the crrent player face node.
function get_adjacent_player_faces() {
	return global.die_graph_array[get_current_player_face_number() - 1].adjacent_nodes;
}

// Sets the current player face number to the pending player face number.
function update_current_face_number() {
	show_debug_message("updating current face (" + string(global.current_player_face_number) + ") to pending: " + string(global.pending_player_face_number));
	global.current_player_face_number = global.pending_player_face_number;
}

// Changes the face assigned to a die graph node to the specified face.
function change_assigned_face_move(_face_number, _new_face_move) {
	global.die_graph_array[_face_number].move = _new_face_move;
}

// Swaps the faces assigned to two die graph nodes.
function swap_face_moves(_first_face_number, _second_face_number) {
	var _first_face_move = global.die_graph_array[_first_face_number].move;
	var _second_face_move = global.die_graph_array[_first_face_number].move;
	
	change_assigned_face_move(_first_face_number, _second_face_move);
	change_assigned_face_move(_second_face_number, _first_face_move);
}