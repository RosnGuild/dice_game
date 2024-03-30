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