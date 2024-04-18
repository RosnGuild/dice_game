/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C42416A
/// @DnDArgument : "expr" ""Restart Game""
/// @DnDArgument : "var" "text"
text = "Restart Game";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F20CB09
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 22C25AF1
	/// @DnDParent : 1F20CB09
	game_restart();
}