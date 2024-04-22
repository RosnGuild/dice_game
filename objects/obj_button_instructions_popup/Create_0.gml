/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7714A477
/// @DnDArgument : "expr" ""Instructions""
/// @DnDArgument : "var" "text"
text = "Instructions";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 27DBA310
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1932EBDF
	/// @DnDParent : 27DBA310
	/// @DnDArgument : "expr" "layer_has_instance("Instances", instance_find(obj_display_instructions, 0))"
	/// @DnDArgument : "not" "1"
	if(!(layer_has_instance("Instances", instance_find(obj_display_instructions, 0))))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17F09BFE
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" ""X""
		/// @DnDArgument : "var" "text"
		text = "X";
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 79A39164
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "ypos" "540"
		/// @DnDArgument : "objectid" "obj_display_instructions"
		/// @DnDSaveInfo : "objectid" "obj_display_instructions"
		instance_create_layer(960, 540, "Instances", obj_display_instructions);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28ECCC9E
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" "5.75"
		/// @DnDArgument : "var" "obj_display_parent.display_x_scale"
		obj_display_parent.display_x_scale = 5.75;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B59A3FE
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "obj_display_parent.display_y_scale"
		obj_display_parent.display_y_scale = 3;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1AADFC46
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_display_parent.display_header_scale"
		obj_display_parent.display_header_scale = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AE7840A
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_display_parent.display_body_scale"
		obj_display_parent.display_body_scale = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30E14583
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_display_parent.display_footer_scale"
		obj_display_parent.display_footer_scale = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34698215
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "obj_display_parent.display_header_text"
		obj_display_parent.display_header_text = "";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 176E2511
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" ""Welcome to Dice Jail!\n\nIn this game you play as a d20 die that has been thrown into Dice Jail for rolling poorly just a few too many times.\nYour goal is to escape Dice Jail by fighting through hordes of enemies in turn-based battles.\n\nIn a battle, you will face up to four enemies.\nAt the start of a round, their upcoming actions will appear underneath them.\nIn response, you get to choose up to two actions to use on your turn.\n\nThese actions appear on each of your 20 faces!\nAt any given time you can select one of the three faces adjacent to the current Top Face (the center face)\nto perform the action stored in it. That action will then move to the Top Face.\nIf the action requires selecting an enemy (such as Strike), you must click an enemy in order to perform it!\n\nGood luck out there!""
		/// @DnDArgument : "var" "obj_display_parent.display_body_text"
		obj_display_parent.display_body_text = "Welcome to Dice Jail!\n\nIn this game you play as a d20 die that has been thrown into Dice Jail for rolling poorly just a few too many times.\nYour goal is to escape Dice Jail by fighting through hordes of enemies in turn-based battles.\n\nIn a battle, you will face up to four enemies.\nAt the start of a round, their upcoming actions will appear underneath them.\nIn response, you get to choose up to two actions to use on your turn.\n\nThese actions appear on each of your 20 faces!\nAt any given time you can select one of the three faces adjacent to the current Top Face (the center face)\nto perform the action stored in it. That action will then move to the Top Face.\nIf the action requires selecting an enemy (such as Strike), you must click an enemy in order to perform it!\n\nGood luck out there!";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3114BA7C
		/// @DnDParent : 1932EBDF
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "obj_display_parent.display_footer_text"
		obj_display_parent.display_footer_text = "";
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 269C0D8B
	/// @DnDParent : 27DBA310
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BEDA1A1
		/// @DnDParent : 269C0D8B
		/// @DnDArgument : "expr" ""Instructions""
		/// @DnDArgument : "var" "text"
		text = "Instructions";
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 72575582
		/// @DnDApplyTo : {obj_display_parent}
		/// @DnDParent : 269C0D8B
		with(obj_display_parent) instance_destroy();
	}
}