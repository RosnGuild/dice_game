// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_die(player_id) {
	// Generating faces
	
	face_array = [];
	for (var i = 0; i < 20; i++) {
		current_face = instance_create_layer(0, 0, 1, Face_Node);
		
		array_insert(face_array, i, current_face);
	}
	// Generating connections
	ds_list_add(face_array[1].adjacent_nodes, face_array[7]);
	ds_list_add(face_array[1].adjacent_nodes, face_array[13]);
	ds_list_add(face_array[1].adjacent_nodes, face_array[19]);
	
	ds_list_add(face_array[2].adjacent_nodes, face_array[12]);
	ds_list_add(face_array[2].adjacent_nodes, face_array[18]);
	ds_list_add(face_array[2].adjacent_nodes, face_array[20]);
	
	ds_list_add(face_array[3].adjacent_nodes, face_array[16]);
	ds_list_add(face_array[3].adjacent_nodes, face_array[17]);
	ds_list_add(face_array[3].adjacent_nodes, face_array[19]);
	
	ds_list_add(face_array[4].adjacent_nodes, face_array[11]);
	ds_list_add(face_array[4].adjacent_nodes, face_array[14]);
	ds_list_add(face_array[4].adjacent_nodes, face_array[18]);
	
	ds_list_add(face_array[5].adjacent_nodes, face_array[13]);
	ds_list_add(face_array[5].adjacent_nodes, face_array[15]);
	ds_list_add(face_array[5].adjacent_nodes, face_array[18]);
	
	ds_list_add(face_array[6].adjacent_nodes, face_array[9]);
	ds_list_add(face_array[6].adjacent_nodes, face_array[14]);
	ds_list_add(face_array[6].adjacent_nodes, face_array[16]);
	
	ds_list_add(face_array[7].adjacent_nodes, face_array[1]);
	ds_list_add(face_array[7].adjacent_nodes, face_array[15]);
	ds_list_add(face_array[7].adjacent_nodes, face_array[17]);
	
	ds_list_add(face_array[8].adjacent_nodes, face_array[10]);
	ds_list_add(face_array[8].adjacent_nodes, face_array[16]);
	ds_list_add(face_array[8].adjacent_nodes, face_array[20]);
	
	ds_list_add(face_array[9].adjacent_nodes, face_array[6]);
	ds_list_add(face_array[9].adjacent_nodes, face_array[11]);
	ds_list_add(face_array[9].adjacent_nodes, face_array[19]);
	
	ds_list_add(face_array[10].adjacent_nodes, face_array[8]);
	ds_list_add(face_array[10].adjacent_nodes, face_array[12]);
	ds_list_add(face_array[10].adjacent_nodes, face_array[17]);
	
	ds_list_add(face_array[11].adjacent_nodes, face_array[4]);
	ds_list_add(face_array[11].adjacent_nodes, face_array[9]);
	ds_list_add(face_array[11].adjacent_nodes, face_array[13]);
	
	ds_list_add(face_array[12].adjacent_nodes, face_array[2]);
	ds_list_add(face_array[12].adjacent_nodes, face_array[10]);
	ds_list_add(face_array[12].adjacent_nodes, face_array[15]);
	
	ds_list_add(face_array[13].adjacent_nodes, face_array[1]);
	ds_list_add(face_array[13].adjacent_nodes, face_array[5]);
	ds_list_add(face_array[13].adjacent_nodes, face_array[11]);
	
	ds_list_add(face_array[14].adjacent_nodes, face_array[4]);
	ds_list_add(face_array[14].adjacent_nodes, face_array[6]);
	ds_list_add(face_array[14].adjacent_nodes, face_array[20]);
	
	ds_list_add(face_array[15].adjacent_nodes, face_array[5]);
	ds_list_add(face_array[15].adjacent_nodes, face_array[7]);
	ds_list_add(face_array[15].adjacent_nodes, face_array[12]);
	
	ds_list_add(face_array[16].adjacent_nodes, face_array[3]);
	ds_list_add(face_array[16].adjacent_nodes, face_array[6]);
	ds_list_add(face_array[16].adjacent_nodes, face_array[8]);
	
	ds_list_add(face_array[17].adjacent_nodes, face_array[3]);
	ds_list_add(face_array[17].adjacent_nodes, face_array[7]);
	ds_list_add(face_array[17].adjacent_nodes, face_array[10]);
	
	ds_list_add(face_array[18].adjacent_nodes, face_array[2]);
	ds_list_add(face_array[18].adjacent_nodes, face_array[4]);
	ds_list_add(face_array[18].adjacent_nodes, face_array[5]);
	
	ds_list_add(face_array[19].adjacent_nodes, face_array[1]);
	ds_list_add(face_array[19].adjacent_nodes, face_array[3]);
	ds_list_add(face_array[19].adjacent_nodes, face_array[9]);
	
	ds_list_add(face_array[20].adjacent_nodes, face_array[2]);
	ds_list_add(face_array[20].adjacent_nodes, face_array[8]);
	ds_list_add(face_array[20].adjacent_nodes, face_array[14]);
	
	
	}
}