// Functions for working with the player die face graph.
function get_current_player_face_number(){
	return global.current_player_face_number;
}

function set_random_player_face() {
	global.current_player_face_number = random_range(1, 20); // TODO: Is this range inclusive?
}

function get_adjacent_player_faces() {
	return global.die_graph_array[get_current_player_face_number() - 1].adjacent_nodes;
}

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