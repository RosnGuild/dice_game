/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0321012F
/// @DnDArgument : "xpos" "800"
/// @DnDArgument : "ypos" "700"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
instance_create_layer(800, 700, "Instances", obj_display_face_infocard);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E2B7B80
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
obj_display_face_infocard.display_x_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61DEE83D
/// @DnDArgument : "expr" "1.7"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
obj_display_face_infocard.display_y_scale = 1.7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61381A80
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_scale"
obj_display_face_infocard.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27E2F00D
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_scale"
obj_display_face_infocard.display_body_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BECE0BC
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_scale"
obj_display_face_infocard.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 038743B8
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_scale"
obj_display_face_infocard.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CA6E86B
/// @DnDArgument : "expr" "string(face)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
obj_display_face_infocard.display_header_text = string(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C43F1DB
/// @DnDArgument : "expr" "string(player_move_get_description(face)) + "\n\n ""
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
obj_display_face_infocard.display_body_text = string(player_move_get_description(face)) + "\n\n ";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27ADF16D
/// @DnDArgument : "expr" ""\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.die_graph_array[number - 1].move)[movedata_COOLDOWN])"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_text"
obj_display_face_infocard.display_body2_text = "\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.die_graph_array[number - 1].move)[movedata_COOLDOWN]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7707AB3B
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(number)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
obj_display_face_infocard.display_footer_text = get_hovered_adjacent_move_names(number);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 705FFC75
/// @DnDArgument : "xpos" "450"
/// @DnDArgument : "ypos" "200"
/// @DnDArgument : "objectid" "obj_display_detailed_move_description"
/// @DnDSaveInfo : "objectid" "obj_display_detailed_move_description"
instance_create_layer(450, 200, "Instances", obj_display_detailed_move_description);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27D857C7
/// @DnDArgument : "expr" "3.1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_x_scale"
obj_display_detailed_move_description.display_x_scale = 3.1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C1D996F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_y_scale"
obj_display_detailed_move_description.display_y_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6045F464
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_scale"
obj_display_detailed_move_description.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DD271D5
/// @DnDArgument : "expr" "0.85"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_scale"
obj_display_detailed_move_description.display_body_scale = 0.85;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 07C10366
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_scale"
obj_display_detailed_move_description.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 626C7FE8
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_scale"
obj_display_detailed_move_description.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 283D6960
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_text"
obj_display_detailed_move_description.display_header_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CE67392
/// @DnDArgument : "expr" "move_get_detailed_description(face)"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_text"
obj_display_detailed_move_description.display_body_text = move_get_detailed_description(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35783FA6
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_text"
obj_display_detailed_move_description.display_body2_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 564381FC
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_text"
obj_display_detailed_move_description.display_footer_text = "";