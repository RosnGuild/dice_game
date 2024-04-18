/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 783F0EC0
/// @DnDArgument : "var" "obj_Player.current_energy"
/// @DnDArgument : "not" "1"
if(!(obj_Player.current_energy == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 24B83948
	/// @DnDParent : 783F0EC0
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 722D710C
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 210ABC29
	/// @DnDParent : 722D710C
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}