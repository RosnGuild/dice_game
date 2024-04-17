// Functions used to manage encounters.
function end_turn_script() {
	
	// Decrements statuses that decrease during the end of the turn.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		decrement_bolster(current_enemy);
		show_debug_message("An enemy's bolster has been decreased to {0}", current_enemy.status_bolster_value);
	}
	
	// Makes all enemeies act and then generate a new number.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		clear_block(current_enemy);
		show_debug_message("An enemy is going to {0} itself", move_get_self_tags(current_enemy.name, current_enemy.move_number));
		show_debug_message("An enemy is going to {0} you ", move_get_target_tags(current_enemy.name, current_enemy.move_number));
		
		parse_move(current_enemy.name, current_enemy, obj_Player, current_enemy.move_number);
		
		current_enemy.move_number = enemy_generate_move_number(current_enemy.name, min(current_enemy.status_bolster_value, 1));
	}
	
	// Resets player energy and block.
	if (layer_has_instance("Instances", instance_find(obj_Player, 0))) {
		clear_block(instance_find(obj_Player, 0));
		reset_energy(instance_find(obj_Player, 0));
	}
	
	// Decrements cooldown for all dice faces.
	for (var _i = 0; _i < 20; _i++) {
		decrement_cooldown(global.die_graph_array[_i]);
	}
	
	
}