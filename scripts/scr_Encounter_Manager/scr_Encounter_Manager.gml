// Functions used to manage encounters.
function end_turn_script() {	
	// Decrements statuses that decrease during the end of the turn.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		clear_block(current_enemy);
		decrement_bolster(current_enemy);
		decrement_vulnerable(current_enemy);
		show_debug_message("An enemy's bolster has been decreased to {0}", current_enemy.status_bolster_value);
	}
	
	// Makes all enemies perform their selected move, based on their dice_number.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		show_debug_message("An enemy is going to {0} itself", move_get_self_tags(current_enemy.name, current_enemy.move_number));
		show_debug_message("An enemy is going to {0} you ", move_get_target_tags(current_enemy.name, current_enemy.move_number));
		
		//current_enemy.attacking = true;	//sets up enemies to perform attack animation
		parse_move(current_enemy.name, current_enemy, obj_Player, current_enemy.move_number);
		if (move_is_attack(current_enemy.name, current_enemy.move_number)) {
			current_enemy.bounce_off_player();
		}
	}
	
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
		decrement_bleed(instance_find(obj_Enemy, i));
	}
	
	update_enemy_move_numbers();
	
	// Resets player energy and block.
	if (layer_has_instance("Instances", instance_find(obj_Player, 0))) {
		clear_block(instance_find(obj_Player, 0));
		decrement_vulnerable(instance_find(obj_Player, 0));
		reset_energy(instance_find(obj_Player, 0));
		decrement_bleed(instance_find(obj_Player, 0))
	}
	
	// Decrements cooldown for all dice faces.
	for (var _i = 0; _i < 20; _i++) {
		decrement_cooldown(global.die_graph_array[_i]);
	}
	
	obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
	
	show_debug_message("CURRENT TOP FACE : {0} and {1}", global.current_player_face_number, global.current_player_face_move)
}

/// @function		update_enemy_move_numbers();
/// @description	Using their saved upcoming move numbers list, updates the move numbers of all enemies for the new round.
function update_enemy_move_numbers() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		enemy_update_move_number(current_enemy);
	}
}