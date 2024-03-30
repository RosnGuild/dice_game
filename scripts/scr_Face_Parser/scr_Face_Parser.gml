// State management for when a face is selected.

global.tags_without_targeting = ["Block"] // Tags that do NOT require enemy selection to resolve. CURRENTLY UNUSED.

/// @function				parse_face(_face);
/// @param {index}	_face	The face to be parsed.
/// @description			Checks whether the passed face requires enemy selection to resolve, sets Encounter_Manager state accordingly.

function parse_face(_face, _actor){
	var _move =_face.face_move
	show_debug_message("Parsing: {0} ({1})", _move, _face)
	
	if(struct_names_count(move_get_target_tags(_move)) > 0) {
		obj_Encounter_Manager.state = STATES.PLAYER_ENEMY_SELECT;
	}	
	parse_move(_actor, move_get_self_tags(_move))
	//update face
	//set cooldown info
}