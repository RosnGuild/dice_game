// State management for when a face is selected.

global.tags_without_targeting = ["Block"] // Tags that do NOT require enemy selection to resolve. CURRENTLY UNUSED.

/// @function				parse_face(_face);
/// @param {String}	_face	The face to be parsed.
/// @description			Checks whether the passed face requires enemy selection to resolve, sets Encounter_Manager state accordingly.
function parse_face(_face){

	if (instance_find(obj_Player, 0).current_energy <= 0) {
		return;
	}

	show_debug_message("Parsing: {0} ({1})", _face)
	
	if(struct_names_count(move_get_target_tags(_face)) > 0) {
		obj_Encounter_Manager.state = STATES.PLAYER_ENEMY_SELECT;
	} else {
		parse_move(_face, obj_Player);
		//update_current_face_number();
	}
	//update face
	//set cooldown info
}