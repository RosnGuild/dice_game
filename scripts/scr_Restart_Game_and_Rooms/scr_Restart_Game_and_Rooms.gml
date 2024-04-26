// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Restart_Game_and_Rooms(){
	global.player_current_hp = global.player_current_hp;
	set_random_player_face();
	global.overworld_step_number = 1;
	
	room_goto(room_first);
	for (var _i = 0; _i <= room_last; _i++) {
		room_restart();
		room_goto_next();
	}
	room_goto(Tutorial_Room);
}