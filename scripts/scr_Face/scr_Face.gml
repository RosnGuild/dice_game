// functions for handling face_node cooldowns.

function decrement_cooldown(_face_node){
	if (_face_node.cooldown > 0) {
		_face_node.cooldown -= 1;
	}
}

function trigger_cooldown(_face_node) {
	_face_node.cooldown = ds_map_find_value(global.move_data, _face_node.node_face)[movedata_COOLDOWN]
}

function reset_cooldown(_face_node) {
	_face_node.face_cooldown_current = 0;
}