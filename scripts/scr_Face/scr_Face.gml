// functions for handling face_node cooldowns.

function decrement_cooldown(_face_node){
	if (_face_node.cooldown > 0) {
		_face_node.cooldown -= 1;
	}
}

function trigger_cooldown(_face_node, _face_object) {
	_face_node.cooldown = _face_object.face_cooldown_max;
}

function reset_cooldown(_face_node) {
	_face_node.face_cooldown_current = 0;
}