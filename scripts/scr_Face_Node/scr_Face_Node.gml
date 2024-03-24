// Defines a constructor for face nodes, used to make the die_graph
function Face_Node(_face_number, _node_face = 0, _adjacency_array = []) constructor
{
    static face_number = _face_number;
	adjacent_nodes = _adjacency_array;
    node_face = _node_face;
} 