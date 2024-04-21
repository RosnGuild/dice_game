// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.current_stashed_face_move = face_move_TRIP;

// Swaps the top face on the player die in the character customizer with the stashed face.
function under_swap(_face_number){
	var _swap_face = global.current_stashed_face_move;
	
	global.current_stashed_face_move = global.die_graph_array[_face_number].move;
	global.die_graph_array[_face_number].move = _swap_face;
	
	return global.current_stashed_face_move;
}

