// Functions used to manage encounters.
function end_turn_script() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    current_enemy = instance_find(obj_Enemy, i);
		
		hit_handler(current_enemy);
		clear_block(current_enemy);
		// entity do thing
	}
}

