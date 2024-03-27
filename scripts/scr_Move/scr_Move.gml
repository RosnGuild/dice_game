// Scripts for applying and handling all tags to an entity.

// Handles decrementing all cooldowns
function cooldown_handler(){
	
}

// Applies incoming damage to an enemy during the enemy_select phase.
function apply_hit(_entity_id, _value) {
	_entity_id.incoming_hit_value += _value
}

// Handles incoming damage to an enemy during the hit phase.
function hit_handler(_entity_id) {
	take_damage(_entity_id, _entity_id.incoming_hit_value);
	_entity_id.incoming_hit_value = 0;
}

// Applies incoming block to an enemy during the block phase.
function apply_block(_entity_id) {
	add_block(_entity_id, _entity_id.incoming_block_value);
	_entity_id.incoming_block_value = 0;
}

// apply_poison()
// handle_poison()