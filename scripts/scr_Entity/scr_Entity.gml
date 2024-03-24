// Functions for working with entities.
function take_damage(_entity_id, _damage_value){
	
	_damage_value = max(_damage_value - _entity_id.status_block_value, 0);
	_entity_id.current_hp -= _damage_value;
	check_death(_entity_id);
}

// Checks if an entity is dead.
function check_death(_entity_id) {
	if (_entity_id.current_hp <= 0) {
		kill_entity(_entity_id);
	}
}

// Executes all code necessary to kill an entity.
function kill_entity(_entity_id) {
	//if (object_get_name(_entity_id.object_index) == "obj_Player") {
		// Do something.
	//}
	
	//if (object_get_name(_entity_id.object_index) == "obj_Enemy") {
		// Do something.
	//}
	instance_destroy(_entity_id);
}

function add_block(_entity_id, _block_value) {
	_entity_id.status_block_value += _block_value;
}

// Resets block on an entity at the end of the round.
function clear_block(_entity_id) {
	_entity_id.status_block_value = 0;
}