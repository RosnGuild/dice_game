// Functions used to manage encounters.
function end_turn_script() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		// hit_handler(current_enemy); // OLD, did damage based on stored incoming damage value.
		clear_block(current_enemy);
		//var _move = enemy_choose_move(current_enemy.name, _move_num);
		show_debug_message("An enemy is going to {0} itself", move_get_self_tags(current_enemy.name, current_enemy.move_number));
		show_debug_message("An enemy is going to {0} you ", move_get_target_tags(current_enemy.name, current_enemy.move_number));
		
		parse_move(current_enemy.name, current_enemy, obj_Player, current_enemy.move_number);
		
		current_enemy.move_number = enemy_generate_move_number(current_enemy.name);
	}
	
	if (layer_has_instance("Instances", instance_find(obj_Player, 0))) {
		clear_block(instance_find(obj_Player, 0));
		reset_energy(instance_find(obj_Player, 0));
	}
}