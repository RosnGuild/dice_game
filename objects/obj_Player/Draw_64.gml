/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 61E82644
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 09B1837B
/// @DnDArgument : "font" "fnt_healthbar"
/// @DnDSaveInfo : "font" "fnt_healthbar"
draw_set_font(fnt_healthbar);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 735F19F6
/// @DnDArgument : "var" "current_energy"
if(current_energy == 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 208F0043
	/// @DnDParent : 735F19F6
	/// @DnDArgument : "color" "$FF0000FF"
	draw_set_colour($FF0000FF & $ffffff);
	var l208F0043_0=($FF0000FF >> 24);
	draw_set_alpha(l208F0043_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1B13A3F1
	/// @DnDParent : 735F19F6
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
/// @DnDHash : 2C2DE151
else
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6D861427
	/// @DnDParent : 2C2DE151
	draw_set_colour($FFFFFFFF & $ffffff);
	var l6D861427_0=($FFFFFFFF >> 24);
	draw_set_alpha(l6D861427_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1943D8FD
	/// @DnDParent : 2C2DE151
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-265"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""ACTIONS LEFT: ""
	/// @DnDArgument : "text" "current_energy"
	draw_text_transformed(x + 0, y + -265, string("ACTIONS LEFT: ") + string(current_energy), 1, 1, 0);
}