/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08EFC35E
/// @DnDArgument : "expr" "number"
/// @DnDArgument : "var" "text"
text = number;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F307A77
/// @DnDArgument : "expr" "global.die_graph_array[number - 1].node_face"
/// @DnDArgument : "var" "face"
face = global.die_graph_array[number - 1].node_face;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1AF1CEC7
/// @DnDArgument : "expr" "layer_has_instance("Instances", instance_find(obj_Player, 0))"
/// @DnDArgument : "not" "1"
if(!(layer_has_instance("Instances", instance_find(obj_Player, 0))))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D85B7AE
	/// @DnDParent : 1AF1CEC7
	instance_destroy();
}