// Functions for working with entities.

/// @function								take_damage(_entity_id, _damage_value, _ignore_block);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @param {Real}			_damage_value	Amount of damage.
/// @param {bool}			_ignore_block	Whether the damage should be reduced by the entity's Block status. (Defaults to false)
/// @description							Increases an entity's block value by an amount.
function take_damage(_entity_id, _damage_value, _ignore_block = false){
	if (variable_instance_exists(_entity_id, "current_hp")) {
		var _final_damage_value = 0;
		if (_ignore_block == false) {
			_final_damage_value = max(_damage_value - _entity_id.status_block_value, 0);
		}
		show_debug_message("DOING {0} DAMAGE", _final_damage_value);
		_entity_id.current_hp -= _final_damage_value;
		check_death(_entity_id);
	}
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

/// @function								add_block(_entity_id, _block_value);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @param {Real}			_block_value		Amount of Block.
/// @description							Increases an entity's Block value by an amount.
function add_block(_entity_id, _block_value) {
	_entity_id.status_block_value += _block_value;
}

/// @function								clear_block(_entity_id);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @description							Sets an entity's Block status to 0.
function clear_block(_entity_id) {
	_entity_id.status_block_value = 0;
}

/// @function								add_burn(_entity_id, _burn_value);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @param {Real}			_burn_value		Amount of burn.
/// @description							Increases an entity's Burn value by an amount.
function add_burn(_entity_id, _burn_value) {
	_entity_id.status_burn_value += _burn_value;
}

/// @function								decrement_status(_entity_id, _status_name);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @param {string}			_status_name	Name of the status.
/// @description							DOESN'T WORK CURRENTLY. CRASHES THE GAME.
function decrement_status(_entity_id, _status_name) {
	_entity_id._status_name = max(_entity_id._status_name - 1, 0);
}

/// @function								decrement_burn(_entity_id);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @description							Decreases given entity's burn value by 1, to a minimum of 0.
function decrement_burn(_entity_id) {
	_entity_id.status_burn_value = max(_entity_id.status_burn_value - 1, 0);
}

/// @function								decrement_bolster(_entity_id);
/// @param {Id.Instance}	_entity_id		The id of the entity.
/// @description							Decreases given entity's bolster value by 1, to a minimum of 0.
function decrement_bolster(_entity_id) {
	_entity_id.status_bolster_value = max(_entity_id.status_bolster_value - 1, 0);
}