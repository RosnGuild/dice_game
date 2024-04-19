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
/// @DnDHash : 51B82D66
/// @DnDInput : 4
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, instance_id_get(inst_1F7F9E8B))"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "position_meeting(mouse_x, mouse_y, instance_id_get(inst_7F6F5D39)) "
/// @DnDArgument : "not_1" "1"
/// @DnDArgument : "expr_2" "position_meeting(mouse_x, mouse_y, instance_id_get(inst_69CA344F)) "
/// @DnDArgument : "not_2" "1"
/// @DnDArgument : "expr_3" "position_meeting(mouse_x, mouse_y, instance_id_get(inst_32A90A63)) "
/// @DnDArgument : "not_3" "1"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7AF0A72D
/// @DnDDisabled : 1
/// @DnDApplyTo : {obj_display_face_infocard}
/// @DnDParent : 51B82D66

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4BB99EBF
/// @DnDInput : 4
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "inst_1F7F9E8B.sprite_index == 0"
/// @DnDArgument : "expr_1" "inst_7F6F5D39.sprite_index == 0"
/// @DnDArgument : "expr_2" "inst_69CA344F.sprite_index == 0"
/// @DnDArgument : "expr_3" "inst_32A90A63.sprite_index == 0"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 356B42DC
/// @DnDDisabled : 1
/// @DnDApplyTo : {obj_display_face_infocard}
/// @DnDParent : 4BB99EBF

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 37E388BC
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, obj_button_playerdie_face_parent)"
/// @DnDArgument : "not" "1"
if(!(position_meeting(mouse_x, mouse_y, obj_button_playerdie_face_parent)))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 417776E0
	/// @DnDApplyTo : {obj_display_face_infocard}
	/// @DnDParent : 37E388BC
	with(obj_display_face_infocard) instance_destroy();
}