/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 46FFDA9B
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08A76FC4
/// @DnDArgument : "expr" ""Test!""
/// @DnDArgument : "var" "text"
text = "Test!";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B617F64
/// @DnDArgument : "funcName" "activate_button"
function activate_button() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71253B18
	/// @DnDParent : 3B617F64
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "sprite_height + 10"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_button_test"
	/// @DnDSaveInfo : "objectid" "obj_button_test"
	instance_create_layer(x + 0, y + sprite_height + 10, "Instances", obj_button_test);
}