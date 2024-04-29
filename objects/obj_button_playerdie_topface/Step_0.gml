/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 11EC9BF9
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2FF4D9FC
/// @DnDArgument : "expr" "get_current_player_face_number()"
/// @DnDArgument : "var" "number"
number = get_current_player_face_number();

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 70D08EE6
/// @DnDArgument : "colour" "$FF999999"
image_blend = $FF999999 & $ffffff;
image_alpha = ($FF999999 >> 24) / $ff;