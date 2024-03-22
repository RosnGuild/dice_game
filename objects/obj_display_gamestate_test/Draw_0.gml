/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 316BF195
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 114ABB2B
/// @DnDArgument : "font" "fnt_button"
/// @DnDSaveInfo : "font" "fnt_button"
draw_set_font(fnt_button);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1A4EACBA
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l1A4EACBA_0=($FF000000 >> 24);
draw_set_alpha(l1A4EACBA_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 54A9CB08
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4CC650B0
/// @DnDArgument : "x" "sprite_width / 2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height / 2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text"
draw_text(x + sprite_width / 2, y + sprite_height / 2,  + string(text));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6410E6CC
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "2"
if(obj_Encounter_Manager.state == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11F42100
	/// @DnDParent : 6410E6CC
	/// @DnDArgument : "expr" ""Encounter state: PLAYER_MOVE_CHOICE""
	/// @DnDArgument : "var" "text"
	text = "Encounter state: PLAYER_MOVE_CHOICE";
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A35408E
/// @DnDArgument : "var" "obj_Encounter_Manager.state"
/// @DnDArgument : "value" "3"
if(obj_Encounter_Manager.state == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D6109A8
	/// @DnDParent : 0A35408E
	/// @DnDArgument : "expr" ""Encounter state: PLAYER_ENEMY_SELECT""
	/// @DnDArgument : "var" "text"
	text = "Encounter state: PLAYER_ENEMY_SELECT";
}