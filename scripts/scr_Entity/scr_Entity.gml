// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function take_damage(_entity_id, _damage_num){
	_entity_id.current_hp -= _damage_num;
	
}

// Checks if an entity is dead.
function check_death(_entity_id) {
	if (_entity_id <= 0) {
		kill_entity(_entity_id);
	}
}

// Executes all code necessary to kill an entity.
function kill_entity(_entity_id) {
	if (object_get_name(_entity_id.object_index) == "Player") {
		// Do something.
	}
	
	if (object_get_name(_entity_id.object_index) == "Enemy") {
		// Do something.
	}
}