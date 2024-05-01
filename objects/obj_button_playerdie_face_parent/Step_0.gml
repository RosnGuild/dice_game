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
/// @DnDArgument : "expr" "instance_exists(obj_Player)"
/// @DnDArgument : "not" "1"
if(!(instance_exists(obj_Player)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D85B7AE
	/// @DnDParent : 1AF1CEC7
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6C8804F2
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3CA96ED8
	/// @DnDParent : 6C8804F2
	/// @DnDArgument : "expr" "global.die_graph_array[number - 1].cooldown > 0 || obj_Player.current_energy == 0 "
	if(global.die_graph_array[number - 1].cooldown > 0 || obj_Player.current_energy == 0 )
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3E72F119
		/// @DnDParent : 3CA96ED8
		/// @DnDArgument : "colour" "$FF999999"
		image_blend = $FF999999 & $ffffff;
		image_alpha = ($FF999999 >> 24) / $ff;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7D631751
	/// @DnDParent : 6C8804F2
	else
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6D9776CA
		/// @DnDParent : 7D631751
		image_blend = $FFFFFFFF & $ffffff;
		image_alpha = ($FFFFFFFF >> 24) / $ff;
	}
}