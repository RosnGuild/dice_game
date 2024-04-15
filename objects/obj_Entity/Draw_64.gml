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
	/// @DnDArgument : "x" "-sprite_width/2.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.3"
	/// @DnDArgument : "yscale" "0.3"
	/// @DnDArgument : "sprite" "spr_block_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_block_tag_icon"
	draw_sprite_ext(spr_block_tag_icon, 0, x + -sprite_width/2.5, y + -sprite_height/1.2, 0.3, 0.3, 0, $FFFFFF & $ffffff, 1);

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
	/// @DnDArgument : "x" "-sprite_height/3.25"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_block_value"
	draw_text(x + -sprite_height/3.25, y + -sprite_height/1.2,  + string(status_block_value));
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
	/// @DnDArgument : "sprite" "spr_scuffed_red_to_grey_square"
	/// @DnDSaveInfo : "sprite" "spr_scuffed_red_to_grey_square"
	draw_sprite_ext(spr_scuffed_red_to_grey_square, 0, x + -sprite_width/1.5, y + -sprite_height/1.2, 0.7, 0.7, 0, $FFFFFF & $ffffff, 1);

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
	/// @DnDArgument : "x" "-sprite_height/2.25"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-sprite_height/1.2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "status_burn_value"
	draw_text(x + -sprite_height/2.25, y + -sprite_height/1.2,  + string(status_burn_value));
}