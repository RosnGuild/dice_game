/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4F936B41
event_inherited();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 166B7BFE
/// @DnDArgument : "xpos" "1075"
/// @DnDArgument : "ypos" "600"
/// @DnDArgument : "objectid" "obj_display_face_infocard"
/// @DnDSaveInfo : "objectid" "obj_display_face_infocard"
instance_create_layer(1075, 600, "Instances", obj_display_face_infocard);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60223F60
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_x_scale"
obj_display_face_infocard.display_x_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B6B9D6E
/// @DnDArgument : "expr" "1.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_y_scale"
obj_display_face_infocard.display_y_scale = 1.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 688FE2F5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_scale"
obj_display_face_infocard.display_header_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7851F437
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_scale"
obj_display_face_infocard.display_body_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F33178A
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_scale"
obj_display_face_infocard.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66D9E383
/// @DnDArgument : "expr" "string(face) + " " + "[" + string(number) + "]""
/// @DnDArgument : "var" "obj_display_face_infocard.display_header_text"
obj_display_face_infocard.display_header_text = string(face) + " " + "[" + string(number) + "]";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCEFA4F
/// @DnDArgument : "expr" "string(player_move_get_description(face))"
/// @DnDArgument : "var" "obj_display_face_infocard.display_body_text"
obj_display_face_infocard.display_body_text = string(player_move_get_description(face));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 306DC0CF
/// @DnDArgument : "expr" "get_hovered_adjacent_move_names(number)"
/// @DnDArgument : "var" "obj_display_face_infocard.display_footer_text"
obj_display_face_infocard.display_footer_text = get_hovered_adjacent_move_names(number);