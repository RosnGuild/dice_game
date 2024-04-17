/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B736450
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "3"
if(obj_Encounter_Manager.state == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 634693EE
	/// @DnDParent : 0B736450
	/// @DnDArgument : "expr" "spr_crumpled_paper_rectangle_test"
	/// @DnDArgument : "var" "display_sprite"
	display_sprite = spr_crumpled_paper_rectangle_test;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69EEC488
	/// @DnDParent : 0B736450
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_header_text"
	display_header_text = "";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6950C7CF
	/// @DnDParent : 0B736450
	/// @DnDArgument : "expr" ""Click an enemy to confirm!""
	/// @DnDArgument : "var" "display_body_text"
	display_body_text = "Click an enemy to confirm!";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4922432D
	/// @DnDParent : 0B736450
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_footer_text"
	display_footer_text = "";

	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1E42FD6B
	/// @DnDParent : 0B736450
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7485E413
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33F68E04
	/// @DnDParent : 7485E413
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "display_sprite"
	display_sprite = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DD828CB
	/// @DnDParent : 7485E413
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_header_text"
	display_header_text = "";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46CEBD0C
	/// @DnDParent : 7485E413
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_body_text"
	display_body_text = "";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 518D6C7F
	/// @DnDParent : 7485E413
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "display_footer_text"
	display_footer_text = "";
}