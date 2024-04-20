// Defines a constructor for face nodes, used to make the die_graph
function Face_Node(_face_number, _node_face = 0, _adjacency_array = [], _cooldown = 0) constructor
{
    face_number = _face_number;
	adjacent_nodes = _adjacency_array;
    node_face = _node_face;
	cooldown = _cooldown;
}

/// @function						get_hovered_adjacent_move_names(_face_node);
/// @description					HELPER FUNCTION for move description getters. Generates and returns a String describing the names of the two upcoming face nodes.
function get_hovered_adjacent_move_names(_face_number) {
	var _display_string = "";
	var _adjacent_nodes = global.die_graph_array[_face_number - 1].adjacent_nodes;
	
	_display_string = string_concat(_display_string, "Next:\n");
	for (var i = 0; i < 3; i++) {
		_display_string = string_concat(_display_string, global.die_graph_array[_adjacent_nodes[i] - 1].face_number);
		_display_string = string_concat(_display_string, ": ");
		_display_string = string_concat(_display_string, global.die_graph_array[_adjacent_nodes[i] - 1].node_face);
		if (i+1 != 3) {
			_display_string = string_concat(_display_string, ",\n");
		}
	}
	
	return _display_string;
}