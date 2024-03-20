/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38B6F01E
/// @DnDArgument : "var" "current_hp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_hp / 2"
if(current_hp < max_hp / 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5E75690E
	/// @DnDParent : 38B6F01E
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_scuffed_red_to_grey_square"
	/// @DnDSaveInfo : "spriteind" "spr_scuffed_red_to_grey_square"
	sprite_index = spr_scuffed_red_to_grey_square;
	image_index = 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 4BF894EF
	/// @DnDParent : 38B6F01E
	/// @DnDArgument : "angle" "45"
	image_angle = 45;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A037415
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1D20DF27
	/// @DnDParent : 6A037415
	/// @DnDArgument : "spriteind" "spr_scuffed_red_to_grey_square"
	/// @DnDSaveInfo : "spriteind" "spr_scuffed_red_to_grey_square"
	sprite_index = spr_scuffed_red_to_grey_square;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 43261E03
	/// @DnDParent : 6A037415
	image_angle = 0;
}