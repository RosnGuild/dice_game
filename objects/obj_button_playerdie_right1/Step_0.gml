/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6577913A
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 228BE790
/// @DnDParent : 6577913A
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05CD130F
/// @DnDParent : 6577913A
/// @DnDArgument : "expr" "get_adjacent_player_faces()[1]"
/// @DnDArgument : "var" "number"
number = get_adjacent_player_faces()[1];