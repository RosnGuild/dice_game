/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0410DC70
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 592A2558
/// @DnDArgument : "font" "fnt_button"
/// @DnDSaveInfo : "font" "fnt_button"
draw_set_font(fnt_button);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 185D6B71
/// @DnDArgument : "color" "$40000000"
draw_set_colour($40000000 & $ffffff);
var l185D6B71_0=($40000000 >> 24);
draw_set_alpha(l185D6B71_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1686D4BE
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 05991240
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.75"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "1.75"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + 0, y + 0, "" + string(text), image_xscale + 1.75, image_yscale + 1.75, text_rotation);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5F43E23D
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l5F43E23D_0=($FF000000 >> 24);
draw_set_alpha(l5F43E23D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 041A2BAD
/// @DnDArgument : "x" "-2 * dsin(text_rotation)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15 * dcos(text_rotation)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "string_replace(face, " ", "\n")"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + -2 * dsin(text_rotation), y + -15 * dcos(text_rotation), "" + string(string_replace(face, " ", "\n")), 1.5, 1.5, text_rotation);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 76FEEC25
/// @DnDArgument : "color" "$BD000000"
draw_set_colour($BD000000 & $ffffff);
var l76FEEC25_0=($BD000000 >> 24);
draw_set_alpha(l76FEEC25_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6F140E54
/// @DnDArgument : "x" "10 * dsin(text_rotation)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/5 + 20 * dcos(text_rotation)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.7"
/// @DnDArgument : "yscale" "0.7"
/// @DnDArgument : "caption" ""Cooldown: ""
/// @DnDArgument : "text" "ds_map_find_value(global.move_data, face)[movedata_COOLDOWN]"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + 10 * dsin(text_rotation), y + sprite_height/5 + 20 * dcos(text_rotation), string("Cooldown: ") + string(ds_map_find_value(global.move_data, face)[movedata_COOLDOWN]), 0.7, 0.7, text_rotation);