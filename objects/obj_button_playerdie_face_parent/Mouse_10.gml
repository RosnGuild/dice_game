/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 486195AD
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4F936B41
	/// @DnDParent : 486195AD
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 47A53A40
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1A9A5A6C
	/// @DnDParent : 47A53A40
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 166B7BFE
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "800"
/// @DnDArgument : "ypos" "700"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CD65D9C
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FAFE78B
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "1.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23E6137A
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "string(number) + ":\n" + string(player_move_get_description(face.face_move))"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E204E33
/// @DnDDisabled : 1
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CBF69C4
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(number)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"