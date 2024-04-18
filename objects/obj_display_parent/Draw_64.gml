/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 34E9ED14
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "display_x_scale"
/// @DnDArgument : "yscale" "display_y_scale"
/// @DnDArgument : "sprite" "display_sprite"
draw_sprite_ext(display_sprite, 0, x + 0, y + 0, display_x_scale, display_y_scale, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0AA92C70
/// @DnDArgument : "font" "display_font"
draw_set_font(display_font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1EF525BC
/// @DnDArgument : "color" "display_text_color"
draw_set_colour(display_text_color & $ffffff);
var l1EF525BC_0=(display_text_color >> 24);
draw_set_alpha(l1EF525BC_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 77049052
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3BFCF561
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "display_header_scale"
/// @DnDArgument : "yscale" "display_header_scale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "display_header_text"
draw_text_transformed(x + 0, y + -sprite_height/2, "" + string(display_header_text), display_header_scale, display_header_scale, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 31AF077D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "display_body_scale"
/// @DnDArgument : "yscale" "display_body_scale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "display_body_text"
draw_text_transformed(x + 0, y + 0, "" + string(display_body_text), display_body_scale, display_body_scale, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4109C1FA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "display_footer_scale"
/// @DnDArgument : "yscale" "display_footer_scale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "display_footer_text"
draw_text_transformed(x + 0, y + sprite_height/2, "" + string(display_footer_text), display_footer_scale, display_footer_scale, 0);