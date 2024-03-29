/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DF72DB5
/// @DnDArgument : "expr" "get_current_player_face_number()"
/// @DnDArgument : "var" "text"
text = get_current_player_face_number();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1ECF9115
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{

}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0A1B27E5
/// @DnDArgument : "colour" "$FFB2B2B2"
image_blend = $FFB2B2B2 & $ffffff;
image_alpha = ($FFB2B2B2 >> 24) / $ff;

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1D36EC65
/// @DnDArgument : "color" "$85FFFFFF"
draw_set_colour($85FFFFFF & $ffffff);
var l1D36EC65_0=($85FFFFFF >> 24);
draw_set_alpha(l1D36EC65_0 / $ff);