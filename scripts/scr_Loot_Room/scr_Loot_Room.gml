// Functions and variables related to loot_rooms.

// Variables that hold room loot.
global.room_loot_1 = face_move_TRIP;
global.room_loot_2 = face_move_SHIELD_BASH;
global.room_loot_3 = face_move_PORTENT;

// Arrays of all lootable faces, grouped by rarity.
loot_table = ds_map_keys_to_array(global.move_data);
global.loot_table_common = [];
global.loot_table_uncommon = [];

// Populating arrays
for (var _i = 0; _i < array_length(loot_table); _i++) {
	array_foreach(loot_table, sort_faces_by_rarity)
}

// Sorts the input _face into the appropriate loot table for it's rarity. 
function sort_faces_by_rarity(_face, _index) {
	if (move_get_rarity(_face) == RARITY.COMMON) {
		array_push(global.loot_table_common, _face)
	}
	
	else if (move_get_rarity(_face) == RARITY.UNCOMMON) {
		array_push(global.loot_table_uncommon, _face)
	}
}

// Swaps the top face on the player die in the loot_rooms with the input _loot_face. Used by the loot room swap buttons.
function under_swap(_face_number, _loot_face){
	
	if (_loot_face == 1) {
		var _swap_face = global.room_loot_1;
		global.room_loot_1 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	else if (_loot_face == 2) {
		var _swap_face = global.room_loot_2;
		global.room_loot_2 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	else if (_loot_face == 3) {
		var _swap_face = global.room_loot_3;
		global.room_loot_3 = global.die_graph_array[_face_number].move;
		global.die_graph_array[_face_number].move = _swap_face;
	}
	
	return _loot_face;
}

// Generates new loot for the loot rooms, mostly common. Called in the create event of a loot room.
function generate_loot() {
	global.room_loot_1 = global.loot_table_uncommon[random_range(0, array_length(global.loot_table_uncommon))];
	global.room_loot_2 = global.loot_table_common[random_range(0, array_length(global.loot_table_common))];
	global.room_loot_3 = global.loot_table_common[random_range(0, array_length(global.loot_table_common))]
}

// Generates new loot for the loot rooms, all uncommon. Called in the create event of a loot room.
function generate_uncommon_loot() {
	global.room_loot_1 = global.loot_table_uncommon[random_range(0, array_length(global.loot_table_uncommon))];
	global.room_loot_2 = global.loot_table_uncommon[random_range(0, array_length(global.loot_table_uncommon))];
	global.room_loot_3 = global.loot_table_uncommon[random_range(0, array_length(global.loot_table_uncommon))]
}



