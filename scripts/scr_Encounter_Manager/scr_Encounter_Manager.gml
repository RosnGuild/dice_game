// Functions used to manage encounters.
function end_turn_script() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		hit_handler(current_enemy);
		clear_block(current_enemy);
		// entity do thing
		var _move = choose_move(current_enemy.name);
		//show_debug_message("An enemy is going to {0} to itself", move_get_self_tags(current_enemy.name, _move_num));
		//show_debug_message("Ano enemy is going to {0} you ", move_get_target_tags(current_enemy.name, _move_num));
		show_debug_message("An enemy is going to {0} to itself", _move[0]);
		show_debug_message("Ano enemy is going to {0} you ", _move[1]);
		parse_move(_move, current_enemy, obj_Player);
	}
}