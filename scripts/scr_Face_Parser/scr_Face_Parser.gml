// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function parse_face(_face){
	//if(!object_get_parent(_face).object_index == obj_Face){
	//	return;
	//}
	show_debug_message("got here");
	//var tags = obj_Encounter_Manager.selected_face;
	show_debug_message("got here two");
	show_debug_message(hit6);
	//.face_move.tag_list
	show_debug_message(obj_Encounter_Manager.selected_tags);
	
	
	var size = ds_list_size(tags);
	for (var i = 0; i < size; i++) {
	    var item = ds_list_find_value(tags,i);
	    if (item.requires_targeting) {
	        obj_Encounter_Manager.state = obj_Encounter_Manager.STATES.PLAYER_ENEMY_SELECT;
	    }
	}
}