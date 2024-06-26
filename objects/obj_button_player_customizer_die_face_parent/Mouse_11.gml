/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 69B08C2D
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 451D058E
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2063EF6D
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 29439D72
	/// @DnDApplyTo : {obj_display_face_infocard}
	/// @DnDParent : 2063EF6D
	with(obj_display_face_infocard) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75A045F8
	/// @DnDApplyTo : {obj_display_detailed_move_description}
	/// @DnDParent : 2063EF6D
	with(obj_display_detailed_move_description) instance_destroy();
}