/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 57CFD8B5
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C1A8254
/// @DnDArgument : "expr" ""Block!""
/// @DnDArgument : "var" "text"
text = "Block!";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0C425035
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65A449E8
	/// @DnDParent : 0C425035
	/// @DnDArgument : "var" "obj_Encounter_Manager.state"
	/// @DnDArgument : "value" "STATES.PLAYER_MOVE_CHOICE"
	if(obj_Encounter_Manager.state == STATES.PLAYER_MOVE_CHOICE)
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7F066EED
		/// @DnDParent : 65A449E8
		/// @DnDArgument : "colour" "$FFFF5900"
		/// @DnDArgument : "alpha" "false"
		image_blend = $FFFF5900 & $ffffff;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A12B766
		/// @DnDParent : 65A449E8
		/// @DnDArgument : "expr" "STATES.PLAYER_ENEMY_SELECT"
		/// @DnDArgument : "var" "obj_Encounter_Manager.state"
		obj_Encounter_Manager.state = STATES.PLAYER_ENEMY_SELECT;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64DA1EF0
		/// @DnDParent : 65A449E8
		/// @DnDArgument : "expr" "obj_face_Block"
		/// @DnDArgument : "var" "obj_Encounter_Manager.selected_action"
		obj_Encounter_Manager.selected_action = obj_face_Block;
	}
}