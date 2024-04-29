/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6059DAD0
/// @DnDArgument : "xpos" "450"
/// @DnDArgument : "ypos" "150"
/// @DnDArgument : "objectid" "obj_display_detailed_move_description"
/// @DnDSaveInfo : "objectid" "obj_display_detailed_move_description"
instance_create_layer(450, 150, "Instances", obj_display_detailed_move_description);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D2BF0A6
/// @DnDArgument : "expr" "3.1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_x_scale"
obj_display_detailed_move_description.display_x_scale = 3.1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FE5112C
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_y_scale"
obj_display_detailed_move_description.display_y_scale = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CD6A408
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_scale"
obj_display_detailed_move_description.display_header_scale = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79A65E1D
/// @DnDArgument : "expr" "0.85"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_scale"
obj_display_detailed_move_description.display_body_scale = 0.85;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 456C4474
/// @DnDArgument : "expr" "0.8"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_scale"
obj_display_detailed_move_description.display_body2_scale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 527B733F
/// @DnDArgument : "expr" "0.75"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_scale"
obj_display_detailed_move_description.display_footer_scale = 0.75;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DD8F34C
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_header_text"
obj_display_detailed_move_description.display_header_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16B7C8F3
/// @DnDArgument : "expr" "move_get_detailed_description(name, current_move_numbers[0])"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body_text"
obj_display_detailed_move_description.display_body_text = move_get_detailed_description(name, current_move_numbers[0]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CC8FCB1
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_body2_text"
obj_display_detailed_move_description.display_body2_text = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36D60E2D
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_display_detailed_move_description.display_footer_text"
obj_display_detailed_move_description.display_footer_text = "";