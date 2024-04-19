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
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5646D08D
	/// @DnDParent : 2B3E052F
	/// @DnDArgument : "imageind" "2"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 2;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C44C103
	/// @DnDParent : 2B3E052F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_enemy_select_overlay"
	/// @DnDArgument : "layer" ""Button_Instances""
	/// @DnDSaveInfo : "objectid" "obj_enemy_select_overlay"
	instance_create_layer(x + 0, y + 0, "Button_Instances", obj_enemy_select_overlay);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7B20D004
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 630BC33A
	/// @DnDApplyTo : {obj_enemy_select_overlay}
	/// @DnDParent : 7B20D004
	with(obj_enemy_select_overlay) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5439C122
/// @DnDArgument : "expr" "attacking == true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 034F50E7
	/// @DnDParent : 5439C122
	/// @DnDArgument : "function" "bounce_off_player"
	bounce_off_player();
}