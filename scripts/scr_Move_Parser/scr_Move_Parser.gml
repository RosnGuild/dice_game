/// @function				parse_move(_move, _actor, _target);
/// @param {any}	_move	The name of the move.
/// @param {any}	_self	The entity performing the move.
/// @param {any}	_target	The entity targeted by the move.
/// @description			Processes a given move, causing involved entities to recieve the move's effects.
function parse_move(_move, _self, _target = undefined){
	var _self_tags = move_get_self_tags(_move);
	var _target_tags = move_get_target_tags(_move);
	
	scr_parse_move_helper(_self, _self_tags);
	if (_target != undefined) {
		scr_parse_move_helper(_target, _target_tags);
	}
}

/// @function				scr_parse_move_helper(_entity, _tags);
/// @param {string}	_entity	Target of the tags.
/// @param {struct}	_tags	Tags.
/// @description			Processes a move's tags on a specific entity. HELPER FUNCTION, DO NOT CALL.
function scr_parse_move_helper(_entity, _tags){
	keys = struct_get_names(_tags);
	for (var i = 0; i < struct_names_count(_tags); i++) {
		if(keys[i] == tag_HIT) {
			take_damage(_entity, _tags[$ keys[i]]);
		}
		if(keys[i] == tag_BLOCK) {
			add_block(_entity, _tags[$ keys[i]]);
		}
	}
}