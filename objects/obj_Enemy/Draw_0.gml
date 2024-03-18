/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 00E3D5A2
event_inherited();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7D8D3649
/// @DnDArgument : "font" "fnt_enemy"
/// @DnDSaveInfo : "font" "fnt_enemy"
draw_set_font(fnt_enemy);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 60BC029A
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33CCF63B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sprite_height/5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "string(current_hp) + " / " + string(max_hp)"
draw_text(x + 0, y + -sprite_height/5, string("HP: ") + string(string(current_hp) + " / " + string(max_hp)));