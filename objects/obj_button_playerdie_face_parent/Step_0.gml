/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FB6E28D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08EFC35E
/// @DnDParent : 6FB6E28D
/// @DnDArgument : "expr" "number"
/// @DnDArgument : "var" "text"
text = number;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F307A77
/// @DnDParent : 6FB6E28D
/// @DnDArgument : "expr" "global.die_graph_array[number - 1].node_face"
/// @DnDArgument : "var" "face"
face = global.die_graph_array[number - 1].node_face;