/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 301E2AAF
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 69B08C2D
	/// @DnDParent : 301E2AAF
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6DE9D7CB
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 451D058E
	/// @DnDParent : 6DE9D7CB
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0EABC52C
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_button_playerdie_face_parent)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_button_playerdie_face_parent)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7EFC2484
	/// @DnDApplyTo : {obj_display_face_infocard}
	/// @DnDParent : 0EABC52C
	with(obj_display_face_infocard) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 105AD1E9
	/// @DnDApplyTo : {obj_display_detailed_move_description}
	/// @DnDParent : 0EABC52C
	with(obj_display_detailed_move_description) instance_destroy();
}