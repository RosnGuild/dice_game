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
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11841D21
	/// @DnDParent : 1ECF9115
	/// @DnDArgument : "expr" "number"
	/// @DnDArgument : "var" "global.current_player_face_number"
	global.current_player_face_number = number;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D65338C
	/// @DnDParent : 1ECF9115
	/// @DnDArgument : "expr" "face"
	/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face"
	obj_Encounter_Manager.selected_face = face;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26C8F2FE
	/// @DnDParent : 1ECF9115
	/// @DnDArgument : "expr" "global.die_graph_array[number - 1]"
	/// @DnDArgument : "var" "obj_Encounter_Manager.selected_face_node"
	obj_Encounter_Manager.selected_face_node = global.die_graph_array[number - 1];
}