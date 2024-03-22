// State management for when a face is selected.

global.tags_without_targeting = [movedata_BLOCK] // Tags that do NOT require enemy selection to resolve.

/// @function				parse_face(_face);
/// @param {index}	_face	The face to be parsed.
/// @description			Checks whether the passed face requires enemy selection to resolve, sets Encounter_Manager state accordingly.

function parse_face(_face){
	var move =_face.face_move
	show_debug_message("Parsing: {0} ({1})", global.move_data[move][movedata_NAME], _face)
	
	var tags = array_length(global.move_data[move]);
	for (var tag = 1; tag < tags; tag++) {
		if (!array_contains(global.tags_without_targeting, tag)) {
			if (global.move_data[move][tag] > 0) {
				obj_Encounter_Manager.state = STATES.PLAYER_ENEMY_SELECT;
			}
		}
	}
	
	//set cooldown info
}