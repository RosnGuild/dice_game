/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B10D936
/// @DnDArgument : "var" "step_number"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.overworld_step_number"
if(step_number >= global.overworld_step_number)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 37E6EF8F
	/// @DnDParent : 2B10D936
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "Dice_Jail_black_arrow_line"
	/// @DnDSaveInfo : "spriteind" "Dice_Jail_black_arrow_line"
	sprite_index = Dice_Jail_black_arrow_line;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1070D100
/// @DnDArgument : "var" "step_number"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "global.overworld_step_number"
if(step_number < global.overworld_step_number)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5EDC2071
	/// @DnDParent : 1070D100
	/// @DnDArgument : "spriteind" "Dice_Jail_black_arrow_line"
	/// @DnDSaveInfo : "spriteind" "Dice_Jail_black_arrow_line"
	sprite_index = Dice_Jail_black_arrow_line;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D11A999
/// @DnDArgument : "var" "step_number"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.overworld_step_number"
if(step_number > global.overworld_step_number)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1E0F3574
	/// @DnDParent : 0D11A999
	/// @DnDArgument : "spriteind" "Dice_Jail_black_arrow_line"
	/// @DnDSaveInfo : "spriteind" "Dice_Jail_black_arrow_line"
	sprite_index = Dice_Jail_black_arrow_line;
	image_index = 0;
}