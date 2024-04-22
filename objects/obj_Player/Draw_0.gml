/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 50472B2B
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5075EE83
/// @DnDArgument : "font" "fnt_healthbar"
/// @DnDSaveInfo : "font" "fnt_healthbar"
draw_set_font(fnt_healthbar);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EE76CED
/// @DnDArgument : "var" "current_energy"
if(current_energy == 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0D8EF7DA
	/// @DnDParent : 5EE76CED
	/// @DnDArgument : "color" "$FF0000FF"
	draw_set_colour($FF0000FF & $ffffff);
	var l0D8EF7DA_0=($FF0000FF >> 24);
	draw_set_alpha(l0D8EF7DA_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4EA0DDFF
	/// @DnDParent : 5EE76CED
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-265"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "1.3"
	/// @DnDArgument : "yscale" "1.3"
	/// @DnDArgument : "caption" ""ACTIONS LEFT: ""
	/// @DnDArgument : "text" "current_energy"
	draw_text_transformed(x + 0, y + -265, string("ACTIONS LEFT: ") + string(current_energy), 1.3, 1.3, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7B04A955
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 01403A16
	/// @DnDParent : 7B04A955
	draw_set_colour($FFFFFFFF & $ffffff);
	var l01403A16_0=($FFFFFFFF >> 24);
	draw_set_alpha(l01403A16_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 35B952E3
	/// @DnDParent : 7B04A955
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-265"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""ACTIONS LEFT: ""
	/// @DnDArgument : "text" "current_energy"
	draw_text_transformed(x + 0, y + -265, string("ACTIONS LEFT: ") + string(current_energy), 1, 1, 0);
}