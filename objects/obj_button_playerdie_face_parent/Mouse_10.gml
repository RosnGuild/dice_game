/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4F936B41
event_inherited();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 166B7BFE
/// @DnDArgument : "xpos" "900"
/// @DnDArgument : "ypos" "775"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
instance_create_layer(900, 775, "Instances", obj_display_face_infocard);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CD65D9C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
obj_display_face_infocard.display_x_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FAFE78B
/// @DnDArgument : "expr" "1.65"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
obj_display_face_infocard.display_y_scale = 1.65;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23E6137A
/// @DnDArgument : "expr" "number"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
obj_display_face_infocard.display_header_text = number;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E204E33
/// @DnDArgument : "expr" "player_move_get_description(face.face_move)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
obj_display_face_infocard.display_body_text = player_move_get_description(face.face_move);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CBF69C4
/// @DnDArgument : "expr" "global.die_graph_array[number-1].adjacent_nodes"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
obj_display_face_infocard.display_footer_text = global.die_graph_array[number-1].adjacent_nodes;