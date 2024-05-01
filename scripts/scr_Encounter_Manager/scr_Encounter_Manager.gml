// Functions used to manage encounters.

/// @function		end_turn_script();
/// @description	Called at the end of each turn. Consists of a series of loops that, in order: decrement some enemy status conditions, perform the enemy turn, decrement other enemy status conditions, update enemy move numbers, decrement player status conditions, handle player energy and cooldowns.
function end_turn_script() {
	// Decrements enemy status applied by enemies.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    var _current_enemy = instance_find(obj_Enemy, i);
		clear_block(_current_enemy);
		decrement_bolster(_current_enemy);
	}
	
	// Makes all enemies perform their selected moves, based on their current_move_numbers.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    var _current_enemy = instance_find(obj_Enemy, i);
		if (_current_enemy.status_stun_value == 0) {
		    handle_enemy_moves(_current_enemy);
		}
	}
	
	// Decrements Bleed and inflicts Bleed damage to all enemies.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
		decrement_bleed(instance_find(obj_Enemy, i));
	}
	
	// Decrements enemy statuses applied by the player.
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    var _current_enemy = instance_find(obj_Enemy, i);
		decrement_vulnerable(_current_enemy);
		decrement_scry(_current_enemy)
	}
	
	update_enemy_move_numbers();
	
	// Resets player energy and block, and decrements status effects on the player.
	if (layer_has_instance("Instances", instance_find(obj_Player, 0))) {
		clear_block(instance_find(obj_Player, 0));
		decrement_vulnerable(instance_find(obj_Player, 0));
		reset_energy(instance_find(obj_Player, 0));
		decrement_bleed(instance_find(obj_Player, 0))
	}
	
	// Decrements cooldown for all dice faces.
	if (layer_has_instance("Instances", instance_find(obj_Player, 0))) {
		for (var _i = 0; _i < 20; _i++) {
			decrement_cooldown(global.die_graph_array[_i]);
		}
	}
	
	obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
	
	//show_debug_message("CURRENT TOP FACE : {0} and {1}", global.current_player_face_number, global.current_player_face_move)
}

/// @function		update_enemy_move_numbers();
/// @description	Using their saved upcoming move numbers list, updates the move numbers of all enemies for the new round. Also applies Bolster to those moves.
function update_enemy_move_numbers() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    var _current_enemy = instance_find(obj_Enemy, i);
		if (_current_enemy.status_stun_value == 0) {
		    enemy_update_upcoming_move(_current_enemy);
		} else {
		    decrement_stun(_current_enemy);
		}
	}
}

/// @function				handle_enemy_moves(_enemy);
/// @param {any}	_enemy	id of the enemy performing the moves.
/// @description			Resolves an enemy move's for the round, including all animations.
function handle_enemy_moves(_enemy) {
	for (var i = 0; i < _enemy.actions_per_round; ++i) {
		var _dice_number = _enemy.current_move_numbers[i];
	    parse_move(_enemy.name, _enemy, obj_Player, _dice_number);
		if (!instance_exists(_enemy) || !instance_exists(obj_Player)) {
			return;
		}
		
		show_debug_message("An enemy is going to {0} itself", move_get_self_tags(_enemy.name, _dice_number));
		show_debug_message("An enemy is going to {0} you ", move_get_target_tags(_enemy.name, _dice_number));
		
		if (move_is_attack(_enemy.name, _dice_number)) {
			_enemy.bounce_off_player();
		}
	}
	// current_move_numbers
	
	show_debug_message("Enemy just made a move!");
}