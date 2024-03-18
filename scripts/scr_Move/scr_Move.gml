// Scripts for handling all move abilities.

// Handles decrementing all cooldowns
function cooldown_handler(){
	
}

function hit_handler(_target_id, _value){
	//damage = _value - _target_id.
	//set damage equal to _value minus target's block 
	//or 0, whichever is higher.
	take_damage(_target_id, _value);
}

function block_handler(_blocker_id){
	
}