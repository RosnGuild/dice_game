/// @function							parse_move(_move, _actor, _target, _enemy_dice_roll);
/// @param {any}	_move				The name of the move (or enemy).
/// @param {any}	_self				id of the entity performing the move.
/// @param {any}	_target				Optional: The entity targeted by the move.
/// @param {any}	_enemy_dice_roll	Optional: Dice value rolled by enemy.
/// @description						Processes a given move, causing involved entities to recieve the move's effects.
function parse_move(_move, _self, _target = undefined, _enemy_dice_roll = undefined){
	if (_self == obj_Player) {
		// show_debug_message("Decrementing player energy!")
		decrement_energy(_self);
		trigger_cooldown(obj_Encounter_Manager.selected_face_node, obj_Encounter_Manager.selected_face);
	}
	
	var _self_tags = move_get_self_tags(_move, _enemy_dice_roll);
	var _target_tags = move_get_target_tags(_move, _enemy_dice_roll);
	
	scr_parse_move_helper(_self, _self_tags);
	if (_target != undefined) {
		scr_parse_move_helper(_target, _target_tags);
	}
	
	update_current_face_number();
	take_damage(_self, _self.status_burn_value, true);
	show_debug_message("HAS {0} TAKEN BURN!", _self.status_burn_value);
	
	if (instance_exists(_self)) {
		decrement_burn(_self);
	}
}

/// @function				scr_parse_move_helper(_entity, _tags);
/// @param {ID.Instance}	_entity	Target of the tags.
/// @param {struct}	_tags	Tags.
/// @description			Processes a move's tags on a specific entity. HELPER FUNCTION, DO NOT CALL.
function scr_parse_move_helper(_entity, _tags){
	keys = struct_get_names(_tags);
	for (var i = 0; i < struct_names_count(_tags); i++) {
		switch (keys[i]) {
		    case tag_HIT:
		        take_damage(_entity, _tags[$ keys[i]]);
		        break;
			case tag_BLOCK:
				add_block(_entity, _tags[$ keys[i]]);
				break;
			case tag_BURN:
				add_burn(_entity, _tags[$ keys[i]]);
				break;
			case tag_BOLSTER_SAME:
				
				break;
		    default:
		        // code here
				show_debug_message("ERROR: Attempted to parse tag that doesn't exist!");
				//game_end();
		        break;
		}
	}
}