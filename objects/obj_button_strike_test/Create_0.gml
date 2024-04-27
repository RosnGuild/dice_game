/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 57CFD8B5
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C1A8254
/// @DnDArgument : "expr" ""Strike!""
/// @DnDArgument : "var" "text"
text = "Strike!";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0C425035
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48463E3E
	/// @DnDParent : 0C425035
	/// @DnDArgument : "var" "obj_Encounter_Manager.state"
	/// @DnDArgument : "value" "STATES.PLAYER_MOVE_CHOICE"
	if(obj_Encounter_Manager.state == STATES.PLAYER_MOVE_CHOICE)
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2B94C638
		/// @DnDParent : 48463E3E
		/// @DnDArgument : "colour" "$FF0000FF"
		image_blend = $FF0000FF & $ffffff;
		image_alpha = ($FF0000FF >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 047FDF4C
		/// @DnDParent : 48463E3E
		/// @DnDArgument : "expr" "face"
		/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face"
		obj_Encounter_Manager.selected_face = face;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6B09EF95
		/// @DnDParent : 48463E3E
		/// @DnDArgument : "function" "parse_face"
		/// @DnDArgument : "arg" "obj_Encounter_Manager.selected_face"
		parse_face(obj_Encounter_Manager.selected_face);
	}
}