// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function decrement_value(_tag_id) {
	_tag_id.tag_value -= 1;
	if (_tag_id.tag_value <= 0) {
		instance_destroy(_tag_id, true);
	}
}