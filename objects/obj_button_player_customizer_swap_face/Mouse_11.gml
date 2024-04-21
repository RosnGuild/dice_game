/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 17635688
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0276E9D0
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 444F8567
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_button_player_customizer_die_face_parent)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5AE66055
	/// @DnDApplyTo : {obj_display_face_infocard}
	/// @DnDParent : 444F8567
	with(obj_display_face_infocard) instance_destroy();
}