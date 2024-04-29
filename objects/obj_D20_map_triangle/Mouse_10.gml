/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55B2264A
/// @DnDArgument : "expr" "keyboard_check(vk_tab)"
if(keyboard_check(vk_tab))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 166B7BFE
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "xpos" "1600"
	/// @DnDArgument : "ypos" "700"
	/// @DnDArgument : "objectid" "obj_display_face_infocard"
	/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
	instance_create_layer(1600, 700, "Instances", obj_display_face_infocard);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CD65D9C
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
	obj_display_face_infocard.display_x_scale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AA2FC9C
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1.7"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
	obj_display_face_infocard.display_y_scale = 1.7;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FAFE78B
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1.25"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_header_scale"
	obj_display_face_infocard.display_header_scale = 1.25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 659863AB
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_body_scale"
	obj_display_face_infocard.display_body_scale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58957302
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "0.8"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_scale"
	obj_display_face_infocard.display_body2_scale = 0.8;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54EB256B
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "0.75"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_scale"
	obj_display_face_infocard.display_footer_scale = 0.75;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23E6137A
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "triangle_face"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
	obj_display_face_infocard.display_header_text = triangle_face;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E204E33
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "string(player_move_get_description(triangle_face)) + "\n\n ""
	/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
	obj_display_face_infocard.display_body_text = string(player_move_get_description(triangle_face)) + "\n\n ";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B119578
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" ""\n" + "Current Cooldown: " + string(global.die_graph_array[triangle_number - 1].cooldown)"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_text"
	obj_display_face_infocard.display_body2_text = "\n" + "Current Cooldown: " + string(global.die_graph_array[triangle_number - 1].cooldown);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CBF69C4
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(triangle_number)"
	/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
	obj_display_face_infocard.display_footer_text = get_hovered_adjacent_move_names(triangle_number);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03F5BE82
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "xpos" "1050"
	/// @DnDArgument : "ypos" "400"
	/// @DnDArgument : "objectid" "obj_display_detailed_move_description"
	/// @DnDSaveInfo : "objectid" "obj_display_detailed_move_description"
	instance_create_layer(1050, 400, "Instances", obj_display_detailed_move_description);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15423D4A
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "3.1"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_x_scale"
	obj_display_detailed_move_description.display_x_scale = 3.1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 146D68DA
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_y_scale"
	obj_display_detailed_move_description.display_y_scale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46AA7F1F
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "1.25"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_scale"
	obj_display_detailed_move_description.display_header_scale = 1.25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A649FBA
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "0.85"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_scale"
	obj_display_detailed_move_description.display_body_scale = 0.85;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F7F843D
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "0.8"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_scale"
	obj_display_detailed_move_description.display_body2_scale = 0.8;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22E76D4D
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "0.75"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_scale"
	obj_display_detailed_move_description.display_footer_scale = 0.75;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AF54E65
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_text"
	obj_display_detailed_move_description.display_header_text = "";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4972E546
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" "move_get_detailed_description(triangle_face)"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_text"
	obj_display_detailed_move_description.display_body_text = move_get_detailed_description(triangle_face);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22D0E3F3
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_text"
	obj_display_detailed_move_description.display_body2_text = "";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DDC95AF
	/// @DnDParent : 55B2264A
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_text"
	obj_display_detailed_move_description.display_footer_text = "";
}