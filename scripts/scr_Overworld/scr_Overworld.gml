

// Tracks the player's progression through the overworld, referenced by the objects in the Overworld_Room.
global.overworld_step_number = 1;
global.current_overworld_node = 0;

// Nodes for the overworld map graph.
function Overworld_Node(_room_number, _adjacency_array = []) constructor
{
    room_number = _room_number;
	adjacency_array = _adjacency_array;
}

// Generating the the overworld map graph.
global.overworld_array = [
	new Overworld_Node(0, [1]),
	new Overworld_Node(1, [2, 3]),
	new Overworld_Node(2, [4]),
	new Overworld_Node(3, [5]),
	new Overworld_Node(4, [6]),
	new Overworld_Node(5, [6]),
	new Overworld_Node(6, [7]),
	new Overworld_Node(7, []),
	
];
