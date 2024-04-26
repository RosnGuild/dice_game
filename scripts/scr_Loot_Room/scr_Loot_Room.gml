// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Variables that hold room loot.
global.room_loot_1 = face_move_TRIP;
global.room_loot_2 = face_move_SHIELD_BASH;
global.room_loot_3 = face_move_PORTENT;

// Array of all lootable faces.
global.loot_table = [
	face_move_SHIELD_BASH,
	face_move_BLOODY_BLOW,
	face_move_PORTENT,
	face_move_SLICE,
	face_move_TRIP
	];


// Swaps the top face on the player die in the character customizer with the input _loot_face.
function under_swap(_face_number, _loot_face){
	var _swap_face = _loot_face;
	
	if (_loot_face == global.room_loot_1) {
		global.room_loot_1 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	if (_loot_face == global.room_loot_2) {
		global.room_loot_2 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	if (_loot_face == global.room_loot_3) {
		global.room_loot_3 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	return _loot_face;
}

function generate_loot() {
	global.room_loot_1 = global.loot_table[random_range(0, array_length(global.loot_table))];
	global.room_loot_2 = global.loot_table[random_range(0, array_length(global.loot_table))];
	global.room_loot_3 = global.loot_table[random_range(0, array_length(global.loot_table))]
}



