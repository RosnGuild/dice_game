/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 47829F0D
/// @DnDArgument : "expr" "keyboard_check(vk_tab)"
if(keyboard_check(vk_tab))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 3ED82EEA
	/// @DnDParent : 47829F0D
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 53805F78
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "font" "fnt_button"
	/// @DnDSaveInfo : "font" "fnt_button"
	draw_set_font(fnt_button);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 42B61CC9
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "color" "$FF000000"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 54DFBB12
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 438A43FC
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "triangle_number"
	/// @DnDArgument : "angle" "image_angle"
	draw_text_transformed(x + 0, y + 0, "" + string(triangle_number), 1.5, 1.5, image_angle);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7681FE4F
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "var" "triangle_number"
	/// @DnDArgument : "value" "get_current_player_face_number()"
	if(triangle_number == get_current_player_face_number())
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 77F48B92
		/// @DnDParent : 7681FE4F
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3574B183
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "expr" "array_contains(get_adjacent_player_faces(), triangle_number)"
	if(array_contains(get_adjacent_player_faces(), triangle_number))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6962C4AF
		/// @DnDParent : 3574B183
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0BF805B5
	/// @DnDInput : 2
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "expr" "get_current_player_face_number() == triangle_number"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "expr_1" "array_contains(get_adjacent_player_faces(), triangle_number)"
	/// @DnDArgument : "not_1" "1"
	if(!(get_current_player_face_number() == triangle_number) && !(array_contains(get_adjacent_player_faces(), triangle_number)))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49FD27EA
		/// @DnDParent : 0BF805B5
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 2;
	}
}