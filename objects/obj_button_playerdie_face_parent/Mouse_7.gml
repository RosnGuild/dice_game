/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 340E8A63
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Inherit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5F9BA111
	/// @DnDParent : 340E8A63
	event_inherited();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D917F9E
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 21648177
	/// @DnDParent : 0D917F9E
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}