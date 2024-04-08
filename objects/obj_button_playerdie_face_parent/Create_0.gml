/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DF72DB5
/// @DnDArgument : "expr" "number"
/// @DnDArgument : "var" "text"
text = number;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1ECF9115
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A60C75B
	/// @DnDParent : 1ECF9115
	/// @DnDArgument : "var" "obj_Encounter_Manager.state"
	/// @DnDArgument : "value" "STATES.PLAYER_MOVE_CHOICE"
	if(obj_Encounter_Manager.state == STATES.PLAYER_MOVE_CHOICE)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38EAB423
		/// @DnDParent : 3A60C75B
		/// @DnDArgument : "var" "obj_Player.current_energy"
		/// @DnDArgument : "not" "1"
		if(!(obj_Player.current_energy == 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 667B3410
			/// @DnDParent : 38EAB423
			/// @DnDArgument : "var" "global.die_graph_array[number - 1].cooldown"
			if(global.die_graph_array[number - 1].cooldown == 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5D65338C
				/// @DnDParent : 667B3410
				/// @DnDArgument : "expr" "face"
				/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face"
				obj_Encounter_Manager.selected_face = face;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 26C8F2FE
				/// @DnDParent : 667B3410
				/// @DnDArgument : "expr" "global.die_graph_array[number - 1]"
				/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face_node"
				obj_Encounter_Manager.selected_face_node = global.die_graph_array[number - 1];
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 11841D21
				/// @DnDParent : 667B3410
				/// @DnDArgument : "expr" "number"
				/// @DnDArgument : "var" "global.pending_player_face_number"
				global.pending_player_face_number = number;
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 3581628D
				/// @DnDParent : 667B3410
				/// @DnDArgument : "function" "parse_face"
				/// @DnDArgument : "arg" "obj_Encounter_Manager.selected_face"
				parse_face(obj_Encounter_Manager.selected_face);
			}
		}
	}
}