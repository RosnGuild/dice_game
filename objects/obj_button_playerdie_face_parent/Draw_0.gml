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
/// @DnDArgument : "var" "global.move_data[face.face_move][movedata_NAME]"
draw_text(x + 0, y + sprite_height / 6,  + string(global.move_data[face.face_move][movedata_NAME]));