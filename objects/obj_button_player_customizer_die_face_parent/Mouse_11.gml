/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 69B08C2D
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A75A9EB
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2838C75B
	/// @DnDApplyTo : {obj_display_face_infocard}
	/// @DnDParent : 6A75A9EB
	with(obj_display_face_infocard) instance_destroy();
}