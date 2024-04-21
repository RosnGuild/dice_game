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
		for (var j = 0; j < current_enemy.actions_per_round; ++j) {
		    handle_enemy_move(current_enemy);
		}
	}
	
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
		decrement_bleed(instance_find(obj_Enemy, i));
	}
	
	//update_enemy_move_numbers(); //ATTEMPINTG TO MOVE THIS INTO THE MOVE PARSING
	
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
	
	//show_debug_message("CURRENT TOP FACE : {0} and {1}", global.current_player_face_number, global.current_player_face_move)
}

/// @function		update_enemy_move_numbers();
/// @description	UNUSED. Using their saved upcoming move numbers list, updates the move numbers of all enemies for the new round.
function update_enemy_move_numbers() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		enemy_update_move_number(current_enemy);
	}
}

/// @function				handle_enemy_move(_enemy);
/// @param {any}	_enemy	id of the enemy performing the move.
/// @description			Resolves a single enemy move, including all animations and updating the upcoming dice roll.
function handle_enemy_move(_enemy) {
	parse_move(_enemy.name, _enemy, obj_Player, _enemy.move_number);
	show_debug_message("An enemy is going to {0} itself", move_get_self_tags(current_enemy.name, current_enemy.move_number));
	show_debug_message("An enemy is going to {0} you ", move_get_target_tags(current_enemy.name, current_enemy.move_number));
	
	if (move_is_attack(_enemy.name, _enemy.move_number)) {
		_enemy.bounce_off_player();
	}
	
	enemy_update_move_number(_enemy);
	
	show_debug_message("Enemy just made a move!");
}

