/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10868CD7
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
if(!(obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56579062
	/// @DnDParent : 10868CD7
	/// @DnDArgument : "expr" "get_adjacent_player_faces()[0]"
	/// @DnDArgument : "var" "number"
	number = get_adjacent_player_faces()[0];

	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4E34285F
	/// @DnDParent : 10868CD7
	event_inherited();
}