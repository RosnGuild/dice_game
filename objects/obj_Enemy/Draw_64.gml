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
/// @DnDArgument : "x1" "-sprite_width/1.5"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-sprite_height/1.45"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "sprite_width/1.5"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-sprite_height/1.65"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "100 * (current_hp / max_hp)"
/// @DnDArgument : "backcol" "$FF333333"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(x + -sprite_width/1.5, y + -sprite_height/1.45, x + sprite_width/1.5, y + -sprite_height/1.65, 100 * (current_hp / max_hp), $FF333333 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF333333>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C293CA1
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/1.4"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "string(current_hp) + " / " + string(max_hp)"


/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 094B21CB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/1.7"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9"
/// @DnDArgument : "yscale" "0.9"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "text" "string(current_hp) + " / " + string(max_hp)"
draw_text_transformed(x + 0, y + -sprite_height/1.7, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)), 0.9, 0.9, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7B07827B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height/1.7"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "enemy_move_get_description(name, move_number)"
draw_text_transformed(x + 0, y + sprite_height/1.7, "" + string(enemy_move_get_description(name, move_number)), 1, 1, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6090C8BF
/// @DnDArgument : "var" "status_bolster_value"
/// @DnDArgument : "op" "2"
if(status_bolster_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 646FFBF7
	/// @DnDParent : 6090C8BF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""Bolster: ""
	/// @DnDArgument : "var" "status_bolster_value"
	draw_text(x + 0, y + 0, string("Bolster: ") + string(status_bolster_value));
}

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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C560659
/// @DnDArgument : "expr" "incoming_hit_value > 0 or incoming_block_value > 0"
if(incoming_hit_value > 0 or incoming_block_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4371BEBD
	/// @DnDParent : 4C560659
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l4371BEBD_0=($FF000000 >> 24);
	draw_set_alpha(l4371BEBD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 13BD04A8
	/// @DnDParent : 4C560659
	/// @DnDArgument : "x" "-sprite_width/2.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_width/2.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Incoming: ""
	draw_text(x + -sprite_width/2.5, y + sprite_width/2.5,  + string("Incoming: "));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61E5222D
/// @DnDArgument : "var" "incoming_hit_value"
/// @DnDArgument : "op" "2"
if(incoming_hit_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 38D4CF7B
	/// @DnDParent : 61E5222D
	/// @DnDArgument : "x" "sprite_width/-8"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height/3.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.1"
	/// @DnDArgument : "yscale" "0.1"
	/// @DnDArgument : "sprite" "spr_hit_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_hit_tag_icon"
	draw_sprite_ext(spr_hit_tag_icon, 0, x + sprite_width/-8, y + sprite_height/3.5, 0.1, 0.1, 0, $FFFFFF & $ffffff, 1);

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
	/// @DnDHash : 6784028C
	/// @DnDParent : 61E5222D
	/// @DnDArgument : "x" "sprite_height/12"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height/2.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "incoming_hit_value"
	draw_text(x + sprite_height/12, y + sprite_height/2.5,  + string(incoming_hit_value));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AACC2A0
/// @DnDArgument : "var" "incoming_block_value"
/// @DnDArgument : "op" "2"
if(incoming_block_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2D73F89F
	/// @DnDParent : 5AACC2A0
	/// @DnDArgument : "x" "sprite_width/4.25"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height/1.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.15"
	/// @DnDArgument : "yscale" "0.15"
	/// @DnDArgument : "sprite" "spr_block_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_block_tag_icon"
	draw_sprite_ext(spr_block_tag_icon, 0, x + sprite_width/4.25, y + sprite_height/1.5, 0.15, 0.15, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1531437C
	/// @DnDParent : 5AACC2A0
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l1531437C_0=($FF000000 >> 24);
	draw_set_alpha(l1531437C_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6356537D
	/// @DnDParent : 5AACC2A0
	/// @DnDArgument : "x" "sprite_height/5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height/1.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "incoming_block_value"
	draw_text(x + sprite_height/5, y + sprite_height/1.5,  + string(incoming_block_value));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00531704
/// @DnDArgument : "expr" "outgoing_hit_value > 0"
if(outgoing_hit_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4B7B8294
	/// @DnDParent : 00531704
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l4B7B8294_0=($FF000000 >> 24);
	draw_set_alpha(l4B7B8294_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 67CB4419
	/// @DnDParent : 00531704
	/// @DnDArgument : "x" "sprite_width/2.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_width/1.5"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Outgoing: ""
	draw_text(x + sprite_width/2.5, y + sprite_width/1.5,  + string("Outgoing: "));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22796869
/// @DnDArgument : "var" "outgoing_hit_value"
/// @DnDArgument : "op" "2"
if(outgoing_hit_value > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 609E0B1E
	/// @DnDParent : 22796869
	/// @DnDArgument : "x" "sprite_width/3.5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.15"
	/// @DnDArgument : "yscale" "0.15"
	/// @DnDArgument : "sprite" "spr_hit_tag_icon"
	/// @DnDSaveInfo : "sprite" "spr_hit_tag_icon"
	draw_sprite_ext(spr_hit_tag_icon, 0, x + sprite_width/3.5, y + sprite_height, 0.15, 0.15, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 65A3718A
	/// @DnDParent : 22796869
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l65A3718A_0=($FF000000 >> 24);
	draw_set_alpha(l65A3718A_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 20540984
	/// @DnDParent : 22796869
	/// @DnDArgument : "x" "sprite_height/4.25"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "outgoing_hit_value"
	draw_text(x + sprite_height/4.25, y + sprite_height,  + string(outgoing_hit_value));
}