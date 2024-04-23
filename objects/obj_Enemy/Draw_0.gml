/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5DE496EB
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 40715D2F
/// @DnDArgument : "font" "fnt_healthbar"
/// @DnDSaveInfo : "font" "fnt_healthbar"
draw_set_font(fnt_healthbar);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 65721A82
draw_set_colour($FFFFFFFF & $ffffff);
var l65721A82_0=($FFFFFFFF >> 24);
draw_set_alpha(l65721A82_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 792789A7
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6390EB8C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/2.2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "get_enemy_upcoming_description()"
draw_text_transformed(x + 0, y + sprite_height/2.2, "" + string(get_enemy_upcoming_description()), 1, 1, 0);