/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0EABC52C
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_D20_map_triangle)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_D20_map_triangle)))
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