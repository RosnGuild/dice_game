/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 532615B7
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78437EE2
/// @DnDArgument : "expr" ""Cancel Action""
/// @DnDArgument : "var" "text"
text = "Cancel Action";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 57C5E852
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C24273F
	/// @DnDParent : 57C5E852
	/// @DnDArgument : "var" "obj_Encounter_Manager.state"
	/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
	if(obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EE276E1
		/// @DnDParent : 6C24273F
		/// @DnDArgument : "expr" "STATES.PLAYER_MOVE_CHOICE"
		/// @DnDArgument : "var" "obj_Encounter_Manager.state"
		obj_Encounter_Manager.state = STATES.PLAYER_MOVE_CHOICE;
	}
}