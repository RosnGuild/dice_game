// Functions used to manage encounters.
function end_turn_script() {
	for (var i = 0; i < instance_number(obj_Enemy); i++;) {
	    clear_block(instance_find(obj_Enemy, i));
	}
}