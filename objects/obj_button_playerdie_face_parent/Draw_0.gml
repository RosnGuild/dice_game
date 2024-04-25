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
/// @DnDArgument : "xscale" "1.75*text_scale"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "1.75*text_scale"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + 0, y + 0, "" + string(text), image_xscale + 1.75*text_scale, image_yscale + 1.75*text_scale, text_rotation);

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
/// @DnDArgument : "x" "-2 * dsin(text_rotation)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1 * dcos(text_rotation)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.5*text_scale"
/// @DnDArgument : "yscale" "1.5*text_scale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "face"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + -2 * dsin(text_rotation), y + 1 * dcos(text_rotation), "" + string(face), 1.5*text_scale, 1.5*text_scale, text_rotation);

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
/// @DnDArgument : "x" "10 * dsin(text_rotation)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/5 + 60 * dcos(text_rotation)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.7*text_scale"
/// @DnDArgument : "yscale" "0.7*text_scale"
/// @DnDArgument : "caption" ""Cooldown: ""
/// @DnDArgument : "text" "global.die_graph_array[number - 1].cooldown"
/// @DnDArgument : "angle" "text_rotation"
draw_text_transformed(x + 10 * dsin(text_rotation), y + sprite_height/5 + 60 * dcos(text_rotation), string("Cooldown: ") + string(global.die_graph_array[number - 1].cooldown), 0.7*text_scale, 0.7*text_scale, text_rotation);