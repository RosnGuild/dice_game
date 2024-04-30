/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 486195AD
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4F936B41
	/// @DnDParent : 486195AD
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 47A53A40
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1A9A5A6C
	/// @DnDParent : 47A53A40
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 166B7BFE
/// @DnDArgument : "xpos" "800"
/// @DnDArgument : "ypos" "700"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
instance_create_layer(800, 700, "Instances", obj_display_face_infocard);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CD65D9C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
obj_display_face_infocard.display_x_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AA2FC9C
/// @DnDArgument : "expr" "1.7"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
obj_display_face_infocard.display_y_scale = 1.7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FAFE78B
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_scale"
obj_display_face_infocard.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 659863AB
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_scale"
obj_display_face_infocard.display_body_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58957302
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_scale"
obj_display_face_infocard.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54EB256B
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_scale"
obj_display_face_infocard.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23E6137A
/// @DnDArgument : "expr" "string(face)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
obj_display_face_infocard.display_header_text = string(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E204E33
/// @DnDArgument : "expr" "string(player_move_get_description(face)) + "\n\n ""
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
obj_display_face_infocard.display_body_text = string(player_move_get_description(face)) + "\n\n ";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B119578
/// @DnDArgument : "expr" ""\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.die_graph_array[number - 1].move)[movedata_COOLDOWN])"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_text"
obj_display_face_infocard.display_body2_text = "\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.die_graph_array[number - 1].move)[movedata_COOLDOWN]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CBF69C4
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(number)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
obj_display_face_infocard.display_footer_text = get_hovered_adjacent_move_names(number);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 03F5BE82
/// @DnDArgument : "xpos" "450"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_display_detailed_move_description"
/// @DnDSaveInfo : "objectid" "obj_display_detailed_move_description"
instance_create_layer(450, 200, "Instances", obj_display_detailed_move_description);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15423D4A
/// @DnDArgument : "expr" "3.1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_x_scale"
obj_display_detailed_move_description.display_x_scale = 3.1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 146D68DA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_y_scale"
obj_display_detailed_move_description.display_y_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46AA7F1F
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_scale"
obj_display_detailed_move_description.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2A649FBA
/// @DnDArgument : "expr" "0.85"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_scale"
obj_display_detailed_move_description.display_body_scale = 0.85;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F7F843D
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_scale"
obj_display_detailed_move_description.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22E76D4D
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_scale"
obj_display_detailed_move_description.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AF54E65
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_text"
obj_display_detailed_move_description.display_header_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4972E546
/// @DnDArgument : "expr" "move_get_detailed_description(face)"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_text"
obj_display_detailed_move_description.display_body_text = move_get_detailed_description(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22D0E3F3
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_text"
obj_display_detailed_move_description.display_body2_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DDC95AF
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_text"
obj_display_detailed_move_description.display_footer_text = "";