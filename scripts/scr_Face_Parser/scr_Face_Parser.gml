// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parse_face(_face){
	//if(!object_get_parent(_face).object_index == obj_Face){
	//	return;
	//}
	show_debug_message("got here");
	//var tags = obj_Encounter_Manager.selected_face;
	show_debug_message("got here two");
	//.face_move.tag_list
	show_debug_message(obj_Encounter_Manager.selected_face.face_move);
	var move = obj_Encounter_Manager.selected_face.face_move
	show_debug_message(move)
	
	var tags = array_length(global.move_data[move]);
	for (var tag = 1; tag < tags; tag++) {
		if (tag != movedata_BLOCK) {
			if (global.move_data[move][tag] > 0) {
				obj_Encounter_Manager.state = STATES.PLAYER_ENEMY_SELECT;
			}
		}
	}
	
	//set cooldown info
}