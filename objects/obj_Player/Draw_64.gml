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

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 46DA63EE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-265"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Actions Left: ""
/// @DnDArgument : "var" "current_energy"
draw_text(x + 0, y + -265, string("Actions Left: ") + string(current_energy));