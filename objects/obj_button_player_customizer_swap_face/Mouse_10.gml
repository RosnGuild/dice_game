/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 55C3067F
event_inherited();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F13D19E
/// @DnDArgument : "xpos" "1065"
/// @DnDArgument : "ypos" "600"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
instance_create_layer(1065, 600, "Instances", obj_display_face_infocard);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BEAA9C2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
obj_display_face_infocard.display_x_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13B3ED2A
/// @DnDArgument : "expr" "1.7"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
obj_display_face_infocard.display_y_scale = 1.7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 57A80383
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_scale"
obj_display_face_infocard.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5382B324
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_scale"
obj_display_face_infocard.display_body_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0AC528AD
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_scale"
obj_display_face_infocard.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1268F354
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_scale"
obj_display_face_infocard.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 57C1C46D
/// @DnDArgument : "expr" "string(face)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
obj_display_face_infocard.display_header_text = string(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 096AEB96
/// @DnDArgument : "expr" "string(player_move_get_description(face)) + "\n\n ""
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
obj_display_face_infocard.display_body_text = string(player_move_get_description(face)) + "\n\n ";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D184160
/// @DnDArgument : "expr" ""\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.current_stashed_face_move)[movedata_COOLDOWN])"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body2_text"
obj_display_face_infocard.display_body2_text = "\n" + "Max Cooldown: " + string(ds_map_find_value(global.move_data, global.current_stashed_face_move)[movedata_COOLDOWN]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 540646D0
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
obj_display_face_infocard.display_footer_text = "";

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5306A6D1
/// @DnDArgument : "xpos" "1065"
/// @DnDArgument : "ypos" "100"
/// @DnDArgument : "objectid" "obj_display_detailed_move_description"
/// @DnDSaveInfo : "objectid" "obj_display_detailed_move_description"
instance_create_layer(1065, 100, "Instances", obj_display_detailed_move_description);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26B8653F
/// @DnDArgument : "expr" "3.1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_x_scale"
obj_display_detailed_move_description.display_x_scale = 3.1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 291B67CC
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_y_scale"
obj_display_detailed_move_description.display_y_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 659E50AF
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_scale"
obj_display_detailed_move_description.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6ED62CE7
/// @DnDArgument : "expr" "0.85"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_scale"
obj_display_detailed_move_description.display_body_scale = 0.85;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 783B71BC
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_scale"
obj_display_detailed_move_description.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D721F81
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_scale"
obj_display_detailed_move_description.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C002F5C
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_text"
obj_display_detailed_move_description.display_header_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D7C86DF
/// @DnDArgument : "expr" "move_get_detailed_description(face)"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_text"
obj_display_detailed_move_description.display_body_text = move_get_detailed_description(face);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10E9C2BC
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_text"
obj_display_detailed_move_description.display_body2_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20AE92D9
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_text"
obj_display_detailed_move_description.display_footer_text = "";