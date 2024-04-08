/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 696249A9
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "3"
if(obj_Encounter_Manager.state == 3)
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4F79F8FB
	/// @DnDParent : 696249A9
	event_inherited();
}