/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08EFC35E
/// @DnDArgument : "expr" "number"
/// @DnDArgument : "var" "text"
text = number;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F307A77
/// @DnDArgument : "expr" "global.die_graph_array[number - 1].move"
/// @DnDArgument : "var" "face"
face = global.die_graph_array[number - 1].move;

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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 347724E3
/// @DnDArgument : "var" "obj_Player.current_energy"
if(obj_Player.current_energy == 0)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6F9A5B6C
	/// @DnDParent : 347724E3
	/// @DnDArgument : "colour" "$FF999999"
	image_blend = $FF999999 & $ffffff;
	image_alpha = ($FF999999 >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6136FACF
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 087E9649
	/// @DnDParent : 6136FACF
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 656A9711
/// @DnDArgument : "var" "global.die_graph_array[number - 1].cooldown"
/// @DnDArgument : "op" "2"
if(global.die_graph_array[number - 1].cooldown > 0)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3E72F119
	/// @DnDParent : 656A9711
	/// @DnDArgument : "colour" "$FF999999"
	image_blend = $FF999999 & $ffffff;
	image_alpha = ($FF999999 >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D631751
else
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6D9776CA
	/// @DnDParent : 7D631751
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}