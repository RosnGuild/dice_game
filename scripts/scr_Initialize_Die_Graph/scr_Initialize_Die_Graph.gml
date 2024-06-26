// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.die_graph_array = array_create(20);
global.current_player_face_number = 1;
global.pending_player_face_number = 1;
	
for (i = 0; i < 20; i++) {
	global.die_graph_array[i] = new Face_Node(i + 1);
}
	
die_graph_array[0].adjacent_nodes = [7, 13, 19];
die_graph_array[1].adjacent_nodes = [12, 18, 20];
die_graph_array[2].adjacent_nodes = [16, 17, 19]
die_graph_array[3].adjacent_nodes = [11, 14, 18];			
die_graph_array[4].adjacent_nodes = [13, 15, 18];		
die_graph_array[5].adjacent_nodes = [9, 14, 16];			
die_graph_array[6].adjacent_nodes = [1, 15, 17];			
die_graph_array[7].adjacent_nodes = [10, 16, 20];			
die_graph_array[8].adjacent_nodes = [6, 11, 19];			
die_graph_array[9].adjacent_nodes = [8, 12, 17];			
die_graph_array[10].adjacent_nodes = [4, 9, 13];			
die_graph_array[11].adjacent_nodes = [2, 10, 15];			
die_graph_array[12].adjacent_nodes = [1, 5, 11];			
die_graph_array[13].adjacent_nodes = [4, 6, 20];			
die_graph_array[14].adjacent_nodes = [5, 7, 12];			
die_graph_array[15].adjacent_nodes = [3, 6, 8];			
die_graph_array[16].adjacent_nodes = [3, 7, 10];			
die_graph_array[17].adjacent_nodes = [2, 4, 5];			
die_graph_array[18].adjacent_nodes = [1, 3, 9];			
die_graph_array[19].adjacent_nodes = [2, 8, 14];

/// @function		initialize_die_graph();
/// @description	Resets all dice faces at the start of a game.
function initialize_die_graph() {
	global.die_graph_array[0].move = face_move_SLICE; //face_move_DEFAULT
	global.die_graph_array[1].move = face_move_DAZE;
	global.die_graph_array[2].move = face_move_STRIKE;
	global.die_graph_array[3].move = face_move_STRIKE;
	global.die_graph_array[4].move = face_move_STRIKE;
	global.die_graph_array[5].move = face_move_COMBO;
	global.die_graph_array[6].move = face_move_STRIKE;
	global.die_graph_array[7].move = face_move_STRIKE;
	global.die_graph_array[8].move = face_move_COMBO;
	global.die_graph_array[9].move = face_move_STRIKE;
	global.die_graph_array[10].move = face_move_BLOCK;
	global.die_graph_array[11].move = face_move_BLOCK;
	global.die_graph_array[12].move = face_move_STRIKE;
	global.die_graph_array[13].move = face_move_BLOCK;
	global.die_graph_array[14].move = face_move_DAZE;
	global.die_graph_array[15].move = face_move_BLOCK;
	global.die_graph_array[16].move = face_move_TRIP;
	global.die_graph_array[17].move = face_move_BLOCK;
	global.die_graph_array[18].move = face_move_BLOCK;
	global.die_graph_array[19].move = face_move_TRIP;
}

initialize_die_graph();