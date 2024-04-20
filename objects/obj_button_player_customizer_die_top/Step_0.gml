/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 11EC9BF9
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2FF4D9FC
/// @DnDArgument : "expr" "get_current_player_face_number()"
/// @DnDArgument : "var" "number"
number = get_current_player_face_number();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D0F6E9B
/// @DnDArgument : "expr" "global.die_graph_array[number-1].move"
/// @DnDArgument : "var" "face"
face = global.die_graph_array[number-1].move;