/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 387E88B4
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 12718583
	/// @DnDParent : 387E88B4
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 25A8F0CF
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2CB12633
	/// @DnDParent : 25A8F0CF
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}