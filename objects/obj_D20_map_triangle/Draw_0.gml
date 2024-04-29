/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 693AED4C
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0CD0ADD2
/// @DnDArgument : "font" "fnt_button"
/// @DnDSaveInfo : "font" "fnt_button"
draw_set_font(fnt_button);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 76293B15
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l76293B15_0=($FF000000 >> 24);
draw_set_alpha(l76293B15_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 036710FD
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 08480F77
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "triangle_number"
/// @DnDArgument : "angle" "image_angle"
draw_text_transformed(x + 0, y + 0, "" + string(triangle_number), image_xscale + 1.5, image_yscale + 1.5, image_angle);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29743836
/// @DnDArgument : "var" "triangle_number"
/// @DnDArgument : "value" "get_current_player_face_number()"
if(triangle_number == get_current_player_face_number())
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 33B4E10C
	/// @DnDParent : 29743836
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 125D3C0E
/// @DnDArgument : "expr" "array_contains(get_adjacent_player_faces(), triangle_number)"
if(array_contains(get_adjacent_player_faces(), triangle_number))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C10F3CE
	/// @DnDParent : 125D3C0E
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 305484F5
/// @DnDInput : 2
/// @DnDArgument : "expr" "get_current_player_face_number() == triangle_number"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "array_contains(get_adjacent_player_faces(), triangle_number)"
/// @DnDArgument : "not_1" "1"
if(!(get_current_player_face_number() == triangle_number) && !(array_contains(get_adjacent_player_faces(), triangle_number)))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0994D80B
	/// @DnDParent : 305484F5
	/// @DnDArgument : "imageind" "3"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 3;
}