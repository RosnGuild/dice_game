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
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" "PLAYER_CHOOSES"
	if(state == PLAYER_CHOOSES)
	{
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2B94C638
		/// @DnDParent : 48463E3E
		/// @DnDArgument : "colour" "$FF0000FF"
		image_blend = $FF0000FF & $ffffff;
		image_alpha = ($FF0000FF >> 24) / $ff;
	}
}