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

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4E862AB0
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "colour" "$EBFFFFFF"
	image_blend = $EBFFFFFF & $ffffff;
	image_alpha = ($EBFFFFFF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0AA7FB58
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "expr" "global.die_graph_array[triangle_number - 1].cooldown > 0"
	if(global.die_graph_array[triangle_number - 1].cooldown > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 45DCA119
		/// @DnDParent : 0AA7FB58
		/// @DnDArgument : "colour" "$EB4C4C4C"
		image_blend = $EB4C4C4C & $ffffff;
		image_alpha = ($EB4C4C4C >> 24) / $ff;
	}

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
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "triangle_number"
	/// @DnDArgument : "angle" "image_angle"
	draw_text_transformed(x + 0, y + 0, "" + string(triangle_number), image_xscale + 1.5, 1.5, image_angle);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 23072DCD
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l23072DCD_0=($FF000000 >> 24);
	draw_set_alpha(l23072DCD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2C275891
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "x" "1 * sprite_width/4 * dsin(image_angle)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1 * sprite_height/4 * dcos(image_angle)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.5"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "0.5"
	/// @DnDArgument : "yscale_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "string_replace(triangle_face, " ", "\n")"
	/// @DnDArgument : "angle" "image_angle"
	draw_text_transformed(x + 1 * sprite_width/4 * dsin(image_angle), y + 1 * sprite_height/4 * dcos(image_angle), "" + string(string_replace(triangle_face, " ", "\n")), image_xscale + 0.5, image_yscale + 0.5, image_angle);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 2069FBE3
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "color" "$BD000000"
	draw_set_colour($BD000000 & $ffffff);
	var l2069FBE3_0=($BD000000 >> 24);
	draw_set_alpha(l2069FBE3_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 45EFA10D
	/// @DnDDisabled : 1
	/// @DnDParent : 47829F0D
	/// @DnDArgument : "x" "10 * dsin(image_angle)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sprite_height/5 + 60 * dcos(image_angle)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.7"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "0.7"
	/// @DnDArgument : "yscale_relative" "1"
	/// @DnDArgument : "caption" ""Cooldown: ""
	/// @DnDArgument : "text" "global.die_graph_array[triangle_number - 1].cooldown"
	/// @DnDArgument : "angle" "image_angle"


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