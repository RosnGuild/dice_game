/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 27D0A8AF
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_Enemy)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_Enemy)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 46B40706
	/// @DnDApplyTo : {obj_display_detailed_move_description}
	/// @DnDParent : 27D0A8AF
	with(obj_display_detailed_move_description) instance_destroy();
}