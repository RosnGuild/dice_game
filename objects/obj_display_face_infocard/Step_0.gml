/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6317C969
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, instance_id_get(asset_get_index("obj_button_playerdie_face_parent")))"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DDCC3F0
/// @DnDInput : 4
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "inst_1F7F9E8B.sprite_index == 0"
/// @DnDArgument : "expr_1" "inst_7F6F5D39.sprite_index == 0"
/// @DnDArgument : "expr_2" "inst_69CA344F.sprite_index == 0"
/// @DnDArgument : "expr_3" "inst_32A90A63.sprite_index == 0"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A1FE314
/// @DnDDisabled : 1
/// @DnDParent : 3DDCC3F0
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "display_sprite"


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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 11A74EBA
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65C0A31C
/// @DnDDisabled : 1
/// @DnDParent : 11A74EBA
/// @DnDArgument : "expr" "spr_crumpled_paper_rectangle_test"
/// @DnDArgument : "var" "display_sprite"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32FE9703
/// @DnDDisabled : 1
/// @DnDParent : 11A74EBA
/// @DnDArgument : "var" "inst_1F7F9E8B.sprite_index"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1BF98D57
/// @DnDDisabled : 1
/// @DnDParent : 32FE9703
/// @DnDArgument : "expr" "string(inst_1F7F9E8B.number) + ":\n" + string(player_move_get_description(inst_1F7F9E8B.face.face_move))"
/// @DnDArgument : "var" "display_header_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 320BFC4A
/// @DnDDisabled : 1
/// @DnDParent : 32FE9703
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_1F7F9E8B.number)"
/// @DnDArgument : "var" "display_body_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 569497F7
/// @DnDDisabled : 1
/// @DnDParent : 32FE9703
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "display_footer_text"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60676E32
/// @DnDDisabled : 1
/// @DnDParent : 11A74EBA
/// @DnDArgument : "var" "inst_7F6F5D39.sprite_index"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25740376
/// @DnDDisabled : 1
/// @DnDParent : 60676E32
/// @DnDArgument : "expr" "string(inst_7F6F5D39.number) + ":\n" + string(player_move_get_description(inst_7F6F5D39.face.face_move))"
/// @DnDArgument : "var" "display_header_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78FCFEE2
/// @DnDDisabled : 1
/// @DnDParent : 60676E32
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_7F6F5D39.number)"
/// @DnDArgument : "var" "display_body_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32F17568
/// @DnDDisabled : 1
/// @DnDParent : 60676E32
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "display_footer_text"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65D2ED91
/// @DnDDisabled : 1
/// @DnDParent : 11A74EBA
/// @DnDArgument : "var" "inst_69CA344F.sprite_index"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13CB9D68
/// @DnDDisabled : 1
/// @DnDParent : 65D2ED91
/// @DnDArgument : "expr" "string(inst_69CA344F.number) + ":\n" + string(player_move_get_description(inst_69CA344F.face.face_move))"
/// @DnDArgument : "var" "display_header_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13C879FB
/// @DnDDisabled : 1
/// @DnDParent : 65D2ED91
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_69CA344F.number)"
/// @DnDArgument : "var" "display_body_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DFE6E11
/// @DnDDisabled : 1
/// @DnDParent : 65D2ED91
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "display_footer_text"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 713B6003
/// @DnDDisabled : 1
/// @DnDParent : 11A74EBA
/// @DnDArgument : "var" "inst_32A90A63.sprite_index"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39092F75
/// @DnDDisabled : 1
/// @DnDParent : 713B6003
/// @DnDArgument : "expr" "string(inst_32A90A63.number) + ":\n" + string(player_move_get_description(inst_32A90A63.face.face_move))"
/// @DnDArgument : "var" "display_header_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7282459A
/// @DnDDisabled : 1
/// @DnDParent : 713B6003
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(inst_32A90A63.number)"
/// @DnDArgument : "var" "display_body_text"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7126F828
/// @DnDDisabled : 1
/// @DnDParent : 713B6003
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "display_footer_text"