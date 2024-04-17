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
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 1;
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
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B3E052F
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "3"
if(obj_Encounter_Manager.state == 3)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 3202EC0C
	/// @DnDParent : 2B3E052F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "6"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFCCF7FF"
	effect_create_above(6, x + 0, y + 0, 1, $FFCCF7FF & $ffffff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 63DCC7A4
	/// @DnDDisabled : 1
	/// @DnDParent : 2B3E052F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.01"
	/// @DnDArgument : "yscale" "0.01"
	/// @DnDArgument : "yscale_relative" "1"
	/// @DnDArgument : "sprite" "spr_yellow_pointy_glow_halo_overlay"
	/// @DnDSaveInfo : "sprite" "spr_yellow_pointy_glow_halo_overlay"
}