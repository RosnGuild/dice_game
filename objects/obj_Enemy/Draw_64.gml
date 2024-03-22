/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2854D373
/// @DnDArgument : "font" "fnt_enemy"
/// @DnDSaveInfo : "font" "fnt_enemy"
draw_set_font(fnt_enemy);

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
/// @DnDHash : 2C293CA1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/4"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "string(current_hp) + " / " + string(max_hp)"
draw_text(x + 0, y + -sprite_height/4, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61E5222D
/// @DnDArgument : "var" "status_block_value"
/// @DnDArgument : "op" "2"
if(status_block_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 38D4CF7B
	/// @DnDParent : 61E5222D
	/// @DnDArgument : "x" "-sprite_width/2.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.15"
	/// @DnDArgument : "yscale" "0.15"
	/// @DnDArgument : "sprite" "spr_block_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_block_tag_icon"
	draw_sprite_ext(spr_block_tag_icon, 0, x + -sprite_width/2.5, y + -sprite_height/1.5, 0.15, 0.15, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 38DD4AE9
	/// @DnDParent : 61E5222D
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l38DD4AE9_0=($FF000000 >> 24);
	draw_set_alpha(l38DD4AE9_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 13BD04A8
	/// @DnDParent : 61E5222D
	/// @DnDArgument : "x" "-sprite_height/3.25"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_block_value"
	draw_text(x + -sprite_height/3.25, y + -sprite_height/1.5,  + string(status_block_value));
}