/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4E0CE24E
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 07B55875
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height / 6"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "face.face_move"
draw_text(x + 0, y + sprite_height / 6,  + string(face.face_move));

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5CCD1229
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""CD: ""
/// @DnDArgument : "text" "face.face_cooldown_current"
draw_text_transformed(x + 0, y + 0, string("CD: ") + string(face.face_cooldown_current), 1, 1, 0);