/// @description Insert description here
// You can write your code in this editor
if (obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT) {
	//add_block(id,  global.move_data[obj_Encounter_Manager.selected_face.face_move][movedata_BLOCK]);
	take_damage(id, global.move_data[obj_Encounter_Manager.selected_face.face_move][movedata_HIT]);
	
	obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
}


// access tags with: obj_Encounter_Manager.selected_face.face_move.