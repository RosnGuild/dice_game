

// Tracks the player's progression through the overworld, referenced by the objects in the Overworld_Room.
global.current_overworld_node = 0;

// Nodes for the overworld map graph. They have a room_number, and an array of adjacent nodes.
function Overworld_Node(_room_number, _adjacency_array = []) constructor
{
    room_number = _room_number;
	adjacency_array = _adjacency_array;
}

// Generating the the overworld map graph. This graph represents the 
// layout of the rooms in the overworld. Each node is a room, except 
// for the zeroeth node, which is needed to ensure the ui functions properly.
// This is meant to represent a directed graph with edges exclusively pointed 
// from left to right.
global.overworld_array = [
	new Overworld_Node(0, [1]),
	new Overworld_Node(1, [2]),
	new Overworld_Node(2, [3, 4]),
	new Overworld_Node(3, [5]),
	new Overworld_Node(4, [5]),
	new Overworld_Node(5, [6]),
	new Overworld_Node(6, [])
];
