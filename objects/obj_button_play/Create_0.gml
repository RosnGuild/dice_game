/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19C4BA29
/// @DnDArgument : "expr" ""Play!""
/// @DnDArgument : "var" "text"
text = "Play!";

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
	/// @DnDArgument : "room" "Tutorial_Room"
	/// @DnDSaveInfo : "room" "Tutorial_Room"
	room_goto(Tutorial_Room);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C174050
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "button_text_scale"
button_text_scale = 2;