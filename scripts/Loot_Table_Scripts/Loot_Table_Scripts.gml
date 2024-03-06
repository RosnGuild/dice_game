// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_loot(_highest_rarity){
	seed = random(10);
	if(_highest_rarity == "Common") {
		if(seed >= 5.5) {
			generate_common();
		} else {
			generate_uncommon();
		}
	}
}

function generate_common(){
}

function generate_uncommon(){
}