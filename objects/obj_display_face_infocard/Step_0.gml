/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6317C969
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, instance_id_get(asset_get_index("obj_button_playerdie_face_parent")))"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DDCC3F0
/// @DnDInput : 4
/// @DnDArgument : "expr" "inst_1F7F9E8B.sprite_index == 0"
/// @DnDArgument : "expr_1" "inst_7F6F5D39.sprite_index == 0"
/// @DnDArgument : "expr_2" "inst_69CA344F.sprite_index == 0"
/// @DnDArgument : "expr_3" "inst_32A90A63.sprite_index == 0"
if(inst_1F7F9E8B.sprite_index == 0 && inst_7F6F5D39.sprite_index == 0 && inst_69CA344F.sprite_index == 0 && inst_32A90A63.sprite_index == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A1FE314
	/// @DnDParent : 3DDCC3F0
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "display_sprite"
	display_sprite = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54194C20
	/// @DnDDisabled : 1
	/// @DnDParent : 3DDCC3F0
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_header_text"


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A7FD003
	/// @DnDDisabled : 1
	/// @DnDParent : 3DDCC3F0
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_body_text"


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AED0434
	/// @DnDDisabled : 1
	/// @DnDParent : 3DDCC3F0
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_header_text"
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 11A74EBA
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65C0A31C
	/// @DnDParent : 11A74EBA
	/// @DnDArgument : "expr" "spr_crumpled_paper_rectangle_test"
	/// @DnDArgument : "var" "display_sprite"
	display_sprite = spr_crumpled_paper_rectangle_test;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32FE9703
	/// @DnDParent : 11A74EBA
	/// @DnDArgument : "var" "inst_1F7F9E8B.sprite_index"
	/// @DnDArgument : "value" "1"
	if(inst_1F7F9E8B.sprite_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BF98D57
		/// @DnDParent : 32FE9703
		/// @DnDArgument : "expr" "string(inst_1F7F9E8B.number) + ":\n" + string(player_move_get_description(inst_1F7F9E8B.face.face_move))"
		/// @DnDArgument : "var" "display_header_text"
		display_header_text = string(inst_1F7F9E8B.number) + ":\n" + string(player_move_get_description(inst_1F7F9E8B.face.face_move));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 320BFC4A
		/// @DnDParent : 32FE9703
		/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_1F7F9E8B.number)"
		/// @DnDArgument : "var" "display_body_text"
		display_body_text = get_hovered_adjacent_move_names(inst_1F7F9E8B.number);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 569497F7
		/// @DnDParent : 32FE9703
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "display_footer_text"
		display_footer_text = "";
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60676E32
	/// @DnDParent : 11A74EBA
	/// @DnDArgument : "var" "inst_7F6F5D39.sprite_index"
	/// @DnDArgument : "value" "1"
	if(inst_7F6F5D39.sprite_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25740376
		/// @DnDParent : 60676E32
		/// @DnDArgument : "expr" "string(inst_7F6F5D39.number) + ":\n" + string(player_move_get_description(inst_7F6F5D39.face.face_move))"
		/// @DnDArgument : "var" "display_header_text"
		display_header_text = string(inst_7F6F5D39.number) + ":\n" + string(player_move_get_description(inst_7F6F5D39.face.face_move));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78FCFEE2
		/// @DnDParent : 60676E32
		/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_7F6F5D39.number)"
		/// @DnDArgument : "var" "display_body_text"
		display_body_text = get_hovered_adjacent_move_names(inst_7F6F5D39.number);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32F17568
		/// @DnDParent : 60676E32
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "display_footer_text"
		display_footer_text = "";
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65D2ED91
	/// @DnDParent : 11A74EBA
	/// @DnDArgument : "var" "inst_69CA344F.sprite_index"
	/// @DnDArgument : "value" "1"
	if(inst_69CA344F.sprite_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13CB9D68
		/// @DnDParent : 65D2ED91
		/// @DnDArgument : "expr" "string(inst_69CA344F.number) + ":\n" + string(player_move_get_description(inst_69CA344F.face.face_move))"
		/// @DnDArgument : "var" "display_header_text"
		display_header_text = string(inst_69CA344F.number) + ":\n" + string(player_move_get_description(inst_69CA344F.face.face_move));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13C879FB
		/// @DnDParent : 65D2ED91
		/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_69CA344F.number)"
		/// @DnDArgument : "var" "display_body_text"
		display_body_text = get_hovered_adjacent_move_names(inst_69CA344F.number);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DFE6E11
		/// @DnDParent : 65D2ED91
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "display_footer_text"
		display_footer_text = "";
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 713B6003
	/// @DnDParent : 11A74EBA
	/// @DnDArgument : "var" "inst_32A90A63.sprite_index"
	/// @DnDArgument : "value" "1"
	if(inst_32A90A63.sprite_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39092F75
		/// @DnDParent : 713B6003
		/// @DnDArgument : "expr" "string(inst_32A90A63.number) + ":\n" + string(player_move_get_description(inst_32A90A63.face.face_move))"
		/// @DnDArgument : "var" "display_header_text"
		display_header_text = string(inst_32A90A63.number) + ":\n" + string(player_move_get_description(inst_32A90A63.face.face_move));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7282459A
		/// @DnDParent : 713B6003
		/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_32A90A63.number)"
		/// @DnDArgument : "var" "display_body_text"
		display_body_text = get_hovered_adjacent_move_names(inst_32A90A63.number);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7126F828
		/// @DnDParent : 713B6003
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "display_footer_text"
		display_footer_text = "";
	}
}