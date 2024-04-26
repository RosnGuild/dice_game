/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19C4BA29
/// @DnDArgument : "expr" ""Swap Faces""
/// @DnDArgument : "var" "text"
text = "Swap Faces";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 56BE0477
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0EBAB55E
	/// @DnDParent : 56BE0477
	/// @DnDArgument : "function" "under_swap"
	/// @DnDArgument : "arg" "get_current_player_face_number()-1, 2"
	under_swap(get_current_player_face_number()-1, 2);
}