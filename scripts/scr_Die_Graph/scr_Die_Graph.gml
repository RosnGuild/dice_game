// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Die_Graph(_graph_id){
	node_array = [];
	
	for (i = 1; i <= 20; i++) {
		node_array[i] = instance_create_layer(0, 0, layer, obj_Face_Node);
	}
	
	node_array[1].adjacent_nodes = [7,13,19];
	
	
}