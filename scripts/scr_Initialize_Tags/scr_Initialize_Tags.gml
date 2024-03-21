// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialize_tag_list(){
	Hit6 = instance_create_layer(x, y, layer, obj_Tag_Hit, 
		{
			tag_value : 6
		});
	Block5 = instance_create_layer(x, y, layer, obj_Tag_Block, 
		{
			tag_value : 5
		});
}