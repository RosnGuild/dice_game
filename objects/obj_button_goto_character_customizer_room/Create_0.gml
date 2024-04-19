/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19C4BA29
/// @DnDArgument : "expr" ""Go to Character Customizer""
/// @DnDArgument : "var" "text"
text = "Go to Character Customizer";

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
	/// @DnDArgument : "room" "Character_Customiser_Room"
	/// @DnDSaveInfo : "room" "Character_Customiser_Room"
	room_goto(Character_Customiser_Room);
}