/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 46FFDA9B
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08A76FC4
/// @DnDArgument : "expr" ""End Turn""
/// @DnDArgument : "var" "text"
text = "End Turn";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B617F64
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 07209152
	/// @DnDParent : 3B617F64
	/// @DnDArgument : "function" "end_turn_script"
	end_turn_script();
}