/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 14D311B9
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6B7ED44C
	/// @DnDParent : 14D311B9
	/// @DnDArgument : "expr" "array_contains(global.overworld_array[global.current_overworld_node].adjacency_array, step_number)"
	if(array_contains(global.overworld_array[global.current_overworld_node].adjacency_array, step_number))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F7C9760
		/// @DnDParent : 6B7ED44C
		/// @DnDArgument : "expr" "step_number"
		/// @DnDArgument : "var" "global.current_overworld_node"
		global.current_overworld_node = step_number;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3E1A147F
		/// @DnDParent : 6B7ED44C
		/// @DnDArgument : "room" "Loot_Room_2"
		/// @DnDSaveInfo : "room" "Loot_Room_2"
		room_goto(Loot_Room_2);
	}
}