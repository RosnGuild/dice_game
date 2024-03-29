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