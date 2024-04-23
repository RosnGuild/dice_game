/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19C4BA29
/// @DnDArgument : "expr" ""Go to Map""
/// @DnDArgument : "var" "text"
text = "Go to Map";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 56BE0477
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 21144D15
	/// @DnDParent : 56BE0477
	/// @DnDArgument : "room" "Overworld_Room"
	/// @DnDSaveInfo : "room" "Overworld_Room"
	room_goto(Overworld_Room);
}