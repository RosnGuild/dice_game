/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2854D373
/// @DnDArgument : "font" "fnt_healthbar"
/// @DnDSaveInfo : "font" "fnt_healthbar"
draw_set_font(fnt_healthbar);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 49A9C2B3
draw_set_colour($FFFFFFFF & $ffffff);
var l49A9C2B3_0=($FFFFFFFF >> 24);
draw_set_alpha(l49A9C2B3_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0EA6E79C
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 13C5BC05
/// @DnDArgument : "x1" "-sprite_width/1.75"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-sprite_height/1.45"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "sprite_width/1.75"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-sprite_height/1.65"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "100 * (current_hp / max_hp)"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(x + -sprite_width/1.75, y + -sprite_height/1.45, x + sprite_width/1.75, y + -sprite_height/1.65, 100 * (current_hp / max_hp), $FF333333 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF333333>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 094B21CB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/1.675"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "sprite_height/1000"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "sprite_height/1000"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "text" "string(current_hp) + " / " + string(max_hp)"
draw_text_transformed(x + 0, y + -sprite_height/1.675, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)), image_xscale + sprite_height/1000, image_yscale + sprite_height/1000, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C292B19
/// @DnDArgument : "var" "status_block_value"
/// @DnDArgument : "op" "2"
if(status_block_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2850E39E
	/// @DnDParent : 7C292B19
	/// @DnDArgument : "x" "-sprite_width/2"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "sprite" "spr_block_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_block_tag_icon"
	draw_sprite_ext(spr_block_tag_icon, 0, x + -sprite_width/2, y + -sprite_height/1.2, 0.4, 0.4, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 08CF6C9F
	/// @DnDParent : 7C292B19
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l08CF6C9F_0=($FF000000 >> 24);
	draw_set_alpha(l08CF6C9F_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0E77DF02
	/// @DnDParent : 7C292B19
	/// @DnDArgument : "x" "-sprite_width/2.75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_block_value"
	draw_text(x + -sprite_width/2.75, y + -sprite_height/1.2,  + string(status_block_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59031507
/// @DnDArgument : "var" "status_burn_value"
/// @DnDArgument : "op" "2"
if(status_burn_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6BB1B6A3
	/// @DnDParent : 59031507
	/// @DnDArgument : "x" "-sprite_width/1.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.7"
	/// @DnDArgument : "yscale" "0.7"
	/// @DnDArgument : "sprite" "spr_burn_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_burn_tag_icon"
	draw_sprite_ext(spr_burn_tag_icon, 0, x + -sprite_width/1.5, y + -sprite_height/1.2, 0.7, 0.7, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 47CC2FF2
	/// @DnDParent : 59031507
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l47CC2FF2_0=($FF000000 >> 24);
	draw_set_alpha(l47CC2FF2_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 07D24A2D
	/// @DnDParent : 59031507
	/// @DnDArgument : "x" "-sprite_width/1.8"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_burn_value"
	draw_text(x + -sprite_width/1.8, y + -sprite_height/1.2,  + string(status_burn_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B181BE1
/// @DnDArgument : "var" "status_vulnerable_value"
/// @DnDArgument : "op" "2"
if(status_vulnerable_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 18B30EEA
	/// @DnDParent : 6B181BE1
	/// @DnDArgument : "x" "-sprite_width/2.75"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_vulnerable_tag_icon_2"
	/// @DnDSaveInfo : "sprite" "spr_vulnerable_tag_icon_2"
	draw_sprite_ext(spr_vulnerable_tag_icon_2, 0, x + -sprite_width/2.75, y + -sprite_height/1.2, 0.4, 0.4, image_angle + 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7DDA72B1
	/// @DnDParent : 6B181BE1
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l7DDA72B1_0=($FF000000 >> 24);
	draw_set_alpha(l7DDA72B1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6127EA99
	/// @DnDParent : 6B181BE1
	/// @DnDArgument : "x" "-sprite_width/5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_vulnerable_value"
	draw_text(x + -sprite_width/5, y + -sprite_height/1.2,  + string(status_vulnerable_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A222E78
/// @DnDArgument : "var" "status_bleed_value"
/// @DnDArgument : "op" "2"
if(status_bleed_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1B3AD4BB
	/// @DnDParent : 6A222E78
	/// @DnDArgument : "x" "-sprite_width/6"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_bleed_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_bleed_tag_icon"
	draw_sprite_ext(spr_bleed_tag_icon, 0, x + -sprite_width/6, y + -sprite_height/1.2, 0.4, 0.4, image_angle + 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 11AD58E1
	/// @DnDParent : 6A222E78
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l11AD58E1_0=($FF000000 >> 24);
	draw_set_alpha(l11AD58E1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 68366A0A
	/// @DnDParent : 6A222E78
	/// @DnDArgument : "x" "-sprite_width/8"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_bleed_value"
	draw_text(x + -sprite_width/8, y + -sprite_height/1.2,  + string(status_bleed_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 531B4DB5
/// @DnDArgument : "var" "status_scry_value"
/// @DnDArgument : "op" "2"
if(status_scry_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 21A41D87
	/// @DnDParent : 531B4DB5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_scry_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_scry_tag_icon"
	draw_sprite_ext(spr_scry_tag_icon, 0, x + 0, y + -sprite_height/1.1, 0.4, 0.4, image_angle + 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 33F5497E
	/// @DnDParent : 531B4DB5
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l33F5497E_0=($FF000000 >> 24);
	draw_set_alpha(l33F5497E_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5B543539
	/// @DnDParent : 531B4DB5
	/// @DnDArgument : "x" "sprite_width/3.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_scry_value"
	draw_text(x + sprite_width/3.5, y + -sprite_height/1.2,  + string(status_scry_value));
}