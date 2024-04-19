/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A407786
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5575668C
/// @DnDParent : 3A407786
/// @DnDArgument : "expr" "get_adjacent_player_faces()[2]"
/// @DnDArgument : "var" "number"
number = get_adjacent_player_faces()[2];

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1BAA2DE3
/// @DnDParent : 3A407786
event_inherited();