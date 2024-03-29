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
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BE2EB01
		/// @DnDParent : 3A60C75B
		/// @DnDArgument : "expr" "face"
		/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face"
		obj_Encounter_Manager.selected_face = face;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 68640CE6
		/// @DnDParent : 3A60C75B
		/// @DnDArgument : "function" "parse_face"
		/// @DnDArgument : "arg" "obj_Encounter_Manager.selected_face"
		parse_face(obj_Encounter_Manager.selected_face);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D8DD6F3
		/// @DnDParent : 3A60C75B
		/// @DnDArgument : "var" "obj_Encounter_Manager.state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "STATES.PLAYER_ENEMY_SELECT"
		if(!(obj_Encounter_Manager.state == STATES.PLAYER_ENEMY_SELECT))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7CB0D07C
			/// @DnDParent : 5D8DD6F3
			/// @DnDArgument : "expr" "number"
			/// @DnDArgument : "var" "global.current_player_face_number"
			global.current_player_face_number = number;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46A140B8
			/// @DnDParent : 5D8DD6F3
			/// @DnDArgument : "expr" "get_adjacent_player_faces()[0]"
			/// @DnDArgument : "var" "number"
			number = get_adjacent_player_faces()[0];
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12B25ACC
			/// @DnDParent : 5D8DD6F3
			/// @DnDArgument : "expr" "number"
			/// @DnDArgument : "var" "text"
			text = number;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62DC95E8
			/// @DnDParent : 5D8DD6F3
			/// @DnDArgument : "expr" "global.die_graph_array[number - 1].node_face"
			/// @DnDArgument : "var" "face"
			face = global.die_graph_array[number - 1].node_face;
		}
	}
}