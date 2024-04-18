/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C42416A
/// @DnDArgument : "expr" ""Restart Room""
/// @DnDArgument : "var" "text"
text = "Restart Room";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F20CB09
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 75351944
	/// @DnDParent : 1F20CB09
	room_restart();
}