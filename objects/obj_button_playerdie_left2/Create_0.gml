/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DF72DB5
/// @DnDArgument : "expr" "get_adjacent_player_faces()[2]"
/// @DnDArgument : "var" "text"
text = get_adjacent_player_faces()[2];

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
		/// @DnDAction : YoYo Games.Common.If_Undefined
		/// @DnDVersion : 1
		/// @DnDHash : 1CA95418
		/// @DnDParent : 3A60C75B
		/// @DnDArgument : "var" "global.die_graph_array[text - 1].node_face"
		if(global.die_graph_array[text - 1].node_face == undefined)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 04693B3D
			/// @DnDParent : 1CA95418
			/// @DnDArgument : "expr" "global.die_graph_array[text - 1].node_face"
			/// @DnDArgument : "var" "face"
			face = global.die_graph_array[text - 1].node_face;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0BE2EB01
			/// @DnDParent : 1CA95418
			/// @DnDArgument : "expr" "face"
			/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face"
			obj_Encounter_Manager.selected_face = face;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 68640CE6
			/// @DnDParent : 1CA95418
			/// @DnDArgument : "function" "parse_face"
			/// @DnDArgument : "arg" "obj_Encounter_Manager.selected_face"
			parse_face(obj_Encounter_Manager.selected_face);
		}
	}
}