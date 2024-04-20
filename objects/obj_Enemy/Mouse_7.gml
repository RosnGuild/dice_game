/// @description Insert description here
// You can write your code in this editor
if (obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT) {
	parse_move(obj_Encounter_Manager.selected_face, obj_Player, id);
	
	
	obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
}


// access tags with: obj_Encounter_Manager.selected_face.face_move.