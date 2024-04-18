/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C42416A
/// @DnDArgument : "expr" ""Exit Game""
/// @DnDArgument : "var" "text"
text = "Exit Game";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F20CB09
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 44EADA92
	/// @DnDParent : 1F20CB09
	game_end();
}