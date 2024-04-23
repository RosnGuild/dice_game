/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 14D311B9
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3245FD08
	/// @DnDParent : 14D311B9
	/// @DnDArgument : "var" "step_number"
	/// @DnDArgument : "value" "global.overworld_step_number"
	if(step_number == global.overworld_step_number)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F7C9760
		/// @DnDParent : 3245FD08
		/// @DnDArgument : "expr" "global.overworld_step_number + 1"
		/// @DnDArgument : "var" "global.overworld_step_number"
		global.overworld_step_number = global.overworld_step_number + 1;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3E1A147F
		/// @DnDParent : 3245FD08
		/// @DnDArgument : "room" "Battle_Room"
		/// @DnDSaveInfo : "room" "Battle_Room"
		room_goto(Battle_Room);
	}
}