/// @description Insert description here
// You can write your code in this editor
if (obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT) {
	switch (obj_Encounter_Manager.selected_face) {
	    case obj_face_Strike:
	        take_damage(id, 6);
	        break;
		case obj_face_Block:
	        take_damage(id, -1);
	        break;
	    default:
	        // code here
	        break;
	}
	obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
}


// access tags with: obj_Encounter_Manager.selected_face.face_move.





















