/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 00E3D5A2
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7D8D3649
/// @DnDArgument : "font" "fnt_enemy"
/// @DnDSaveInfo : "font" "fnt_enemy"
draw_set_font(fnt_enemy);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0C27DC63
draw_set_colour($FFFFFFFF & $ffffff);
var l0C27DC63_0=($FFFFFFFF >> 24);
draw_set_alpha(l0C27DC63_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 60BC029A
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 10EFB7D7
/// @DnDArgument : "x1" "-sprite_width/2"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-sprite_height/2.7"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "sprite_width/2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-sprite_height/4"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "100 * (current_hp / max_hp)"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(x + -sprite_width/2, y + -sprite_height/2.7, x + sprite_width/2, y + -sprite_height/4, 100 * (current_hp / max_hp), $FF333333 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF333333>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33CCF63B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/4"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "string(current_hp) + " / " + string(max_hp)"
draw_text(x + 0, y + -sprite_height/4, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)));