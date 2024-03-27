// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.die_graph_array = [];
global.current_player_face = 1;
	
for (i = 1; i <= 20; i++) {
	node_array[i] = new Face_Node(i);
}
	
node_array[1].adjacent_nodes = [7, 13, 19];			
node_array[2].adjacent_nodes = [12, 18, 20];			
node_array[3].adjacent_nodes = [16, 17, 19];			
node_array[4].adjacent_nodes = [11, 14, 18];			
node_array[5].adjacent_nodes = [13, 15, 18];			
node_array[6].adjacent_nodes = [9, 14, 16];			
node_array[7].adjacent_nodes = [1, 15, 17];			
node_array[8].adjacent_nodes = [10, 16, 20];			
node_array[9].adjacent_nodes = [6, 11, 19];			
node_array[10].adjacent_nodes = [8, 12, 17];			
node_array[11].adjacent_nodes = [4, 9, 13];			
node_array[12].adjacent_nodes = [2, 10, 15];			
node_array[13].adjacent_nodes = [1, 5, 11];			
node_array[14].adjacent_nodes = [4, 6, 20];			
node_array[15].adjacent_nodes = [5, 7, 12];			
node_array[16].adjacent_nodes = [3, 6, 8];			
node_array[17].adjacent_nodes = [3, 7, 10];			
node_array[18].adjacent_nodes = [2, 4, 5];			
node_array[19].adjacent_nodes = [1, 3, 9];			
node_array[20].adjacent_nodes = [2, 8, 14];
	