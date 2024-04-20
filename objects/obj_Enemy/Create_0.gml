/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 60353186
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0143B323
/// @DnDArgument : "funcName" "bounce_off_player"
function bounce_off_player() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 110BB8CB
	/// @DnDDisabled : 1
	/// @DnDParent : 0143B323
	/// @DnDArgument : "var" "collided_player"
	/// @DnDArgument : "value" "false"
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6130A062
	/// @DnDParent : 110BB8CB
	/// @DnDArgument : "expr" "layer_has_instance("Instances", instance_find(obj_Player, 0))"
	if(layer_has_instance("Instances", instance_find(obj_Player, 0)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25E9623A
		/// @DnDParent : 6130A062
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "attacking"
		attacking = true;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5DB92FE6
		/// @DnDParent : 6130A062
		/// @DnDArgument : "x" "obj_Player.x"
		/// @DnDArgument : "y" "obj_Player.y"
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7D12FFDA
		/// @DnDParent : 6130A062
		/// @DnDArgument : "speed" "30"
		speed = 30;
	
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 601B620B
		/// @DnDParent : 6130A062
		/// @DnDArgument : "dir" "direction"
		/// @DnDArgument : "speed" "speed"
		motion_add(direction, speed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 19356EEC
	/// @DnDDisabled : 1
	/// @DnDParent : 0143B323
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5031ED0E
	/// @DnDInput : 2
	/// @DnDDisabled : 1
	/// @DnDParent : 19356EEC
	/// @DnDArgument : "expr" "x == start_x"
	/// @DnDArgument : "expr_1" "y == start_y"
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50FEBE3A
	/// @DnDDisabled : 1
	/// @DnDParent : 5031ED0E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "attacking"
	
	
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AF4D346
	/// @DnDDisabled : 1
	/// @DnDParent : 5031ED0E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "collided_player"
	
	
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 19908B8C
	/// @DnDDisabled : 1
	/// @DnDParent : 5031ED0E
	
	
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7A1E0017
	/// @DnDDisabled : 1
	/// @DnDParent : 5031ED0E
	/// @DnDArgument : "function" "set_enemy_new_move_number"
	
	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5DF7A81F
	/// @DnDDisabled : 1
	/// @DnDParent : 19356EEC
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 105DCD37
	/// @DnDDisabled : 1
	/// @DnDParent : 5DF7A81F
	/// @DnDArgument : "x" "start_x"
	/// @DnDArgument : "y" "start_y"
	
	
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7142D208
	/// @DnDDisabled : 1
	/// @DnDParent : 5DF7A81F
	/// @DnDArgument : "speed" "30"
	
	
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 251BCA7F
	/// @DnDDisabled : 1
	/// @DnDParent : 5DF7A81F
	/// @DnDArgument : "dir" "direction"
	/// @DnDArgument : "speed" "speed"
}