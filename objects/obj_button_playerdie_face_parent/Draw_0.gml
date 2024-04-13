/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 486CA886
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7ED4ACD4
/// @DnDArgument : "font" "fnt_button"
/// @DnDSaveInfo : "font" "fnt_button"
draw_set_font(fnt_button);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0F2AF4CE
/// @DnDArgument : "color" "$40000000"
draw_set_colour($40000000 & $ffffff);
var l0F2AF4CE_0=($40000000 >> 24);
draw_set_alpha(l0F2AF4CE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 647B0695
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 327BE451
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.75"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "1.75"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 0, "" + string(text), image_xscale + 1.75, image_yscale + 1.75, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 224B3E45
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l224B3E45_0=($FF000000 >> 24);
draw_set_alpha(l224B3E45_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 25C14FCA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "face.face_move"
draw_text_transformed(x + 0, y + 0, "" + string(face.face_move), 1.5, 1.5, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 067E3317
/// @DnDArgument : "color" "$BD000000"
draw_set_colour($BD000000 & $ffffff);
var l067E3317_0=($BD000000 >> 24);
draw_set_alpha(l067E3317_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5CCD1229
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9"
/// @DnDArgument : "yscale" "0.9"
/// @DnDArgument : "caption" ""CD: ""
/// @DnDArgument : "text" "global.die_graph_array[number - 1].cooldown"
draw_text_transformed(x + 0, y + sprite_height/5, string("CD: ") + string(global.die_graph_array[number - 1].cooldown), 0.9, 0.9, 0);