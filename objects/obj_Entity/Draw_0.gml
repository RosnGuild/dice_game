/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6664A38F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7A450C52
/// @DnDArgument : "font" "fnt_healthbar"
/// @DnDSaveInfo : "font" "fnt_healthbar"
draw_set_font(fnt_healthbar);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 581FC77A
draw_set_colour($FFFFFFFF & $ffffff);
var l581FC77A_0=($FFFFFFFF >> 24);
draw_set_alpha(l581FC77A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2ED7AF4F
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 295EF65B
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
/// @DnDHash : 5DDBD8BC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/1.675"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "sprite_width/1000"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "sprite_height/1000"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "text" "string(current_hp) + " / " + string(max_hp)"
draw_text_transformed(x + 0, y + -sprite_height/1.675, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)), image_xscale + sprite_width/1000, image_yscale + sprite_height/1000, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 443B79B0
/// @DnDArgument : "var" "status_block_value"
/// @DnDArgument : "op" "2"
if(status_block_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1AB31806
	/// @DnDParent : 443B79B0
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
	/// @DnDHash : 0FAE9AD8
	/// @DnDParent : 443B79B0
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l0FAE9AD8_0=($FF000000 >> 24);
	draw_set_alpha(l0FAE9AD8_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5BAE120C
	/// @DnDParent : 443B79B0
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
/// @DnDHash : 2C48F56C
/// @DnDArgument : "var" "status_burn_value"
/// @DnDArgument : "op" "2"
if(status_burn_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4EBF11D2
	/// @DnDParent : 2C48F56C
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
	/// @DnDHash : 0F0C4089
	/// @DnDParent : 2C48F56C
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l0F0C4089_0=($FF000000 >> 24);
	draw_set_alpha(l0F0C4089_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7C8B01E0
	/// @DnDParent : 2C48F56C
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
/// @DnDHash : 742B0486
/// @DnDArgument : "var" "status_vulnerable_value"
/// @DnDArgument : "op" "2"
if(status_vulnerable_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 59491AC1
	/// @DnDParent : 742B0486
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
	/// @DnDHash : 5D64715E
	/// @DnDParent : 742B0486
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l5D64715E_0=($FF000000 >> 24);
	draw_set_alpha(l5D64715E_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3B6E4EDF
	/// @DnDParent : 742B0486
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
/// @DnDHash : 1C146C6D
/// @DnDArgument : "var" "status_bleed_value"
/// @DnDArgument : "op" "2"
if(status_bleed_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7360B5D6
	/// @DnDParent : 1C146C6D
	/// @DnDArgument : "x" "-sprite_width/10"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_bleed_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_bleed_tag_icon"
	draw_sprite_ext(spr_bleed_tag_icon, 0, x + -sprite_width/10, y + -sprite_height/1.2, 0.4, 0.4, image_angle + 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 73FAC39D
	/// @DnDParent : 1C146C6D
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l73FAC39D_0=($FF000000 >> 24);
	draw_set_alpha(l73FAC39D_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 37DEAF83
	/// @DnDParent : 1C146C6D
	/// @DnDArgument : "x" "-sprite_width/20"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_bleed_value"
	draw_text(x + -sprite_width/20, y + -sprite_height/1.2,  + string(status_bleed_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C2F2485
/// @DnDArgument : "var" "status_scry_value"
/// @DnDArgument : "op" "2"
if(status_scry_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 13966216
	/// @DnDParent : 5C2F2485
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
	/// @DnDHash : 5C9348E5
	/// @DnDParent : 5C2F2485
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l5C9348E5_0=($FF000000 >> 24);
	draw_set_alpha(l5C9348E5_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 07731791
	/// @DnDParent : 5C2F2485
	/// @DnDArgument : "x" "sprite_width/3.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_scry_value"
	draw_text(x + sprite_width/3.5, y + -sprite_height/1.2,  + string(status_scry_value));
}