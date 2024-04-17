/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1CDA1757
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DE897C7
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "2"
if(obj_Encounter_Manager.state == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46392BC4
	/// @DnDParent : 4DE897C7
	/// @DnDArgument : "expr" ""Encounter state: PLAYER_MOVE_CHOICE""
	/// @DnDArgument : "var" "display_body_text"
	display_body_text = "Encounter state: PLAYER_MOVE_CHOICE";
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3888EAD8
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "3"
if(obj_Encounter_Manager.state == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21C241F6
	/// @DnDParent : 3888EAD8
	/// @DnDArgument : "expr" ""Encounter state: PLAYER_ENEMY_SELECT""
	/// @DnDArgument : "var" "display_body_text"
	display_body_text = "Encounter state: PLAYER_ENEMY_SELECT";
}