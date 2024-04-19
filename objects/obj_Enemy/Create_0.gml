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
	/// @DnDParent : 0143B323
	/// @DnDArgument : "var" "collided_player"
	/// @DnDArgument : "value" "false"
	if(collided_player == false)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5DB92FE6
		/// @DnDParent : 110BB8CB
		/// @DnDArgument : "x" "obj_Player.x"
		/// @DnDArgument : "y" "obj_Player.y"
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7D12FFDA
		/// @DnDParent : 110BB8CB
		/// @DnDArgument : "speed" "30"
		speed = 30;
	
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 601B620B
		/// @DnDParent : 110BB8CB
		/// @DnDArgument : "dir" "direction"
		/// @DnDArgument : "speed" "speed"
		motion_add(direction, speed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 19356EEC
	/// @DnDParent : 0143B323
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5031ED0E
		/// @DnDInput : 2
		/// @DnDParent : 19356EEC
		/// @DnDArgument : "expr" "x == start_x"
		/// @DnDArgument : "expr_1" "y == start_y"
		if(x == start_x && y == start_y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50FEBE3A
			/// @DnDParent : 5031ED0E
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "attacking"
			attacking = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0AF4D346
			/// @DnDParent : 5031ED0E
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "collided_player"
			collided_player = false;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 19908B8C
			/// @DnDParent : 5031ED0E
			speed = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5DF7A81F
		/// @DnDParent : 19356EEC
		else
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
			/// @DnDVersion : 1
			/// @DnDHash : 105DCD37
			/// @DnDParent : 5DF7A81F
			/// @DnDArgument : "x" "start_x"
			/// @DnDArgument : "y" "start_y"
			direction = point_direction(x, y, start_x, start_y);
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 7142D208
			/// @DnDParent : 5DF7A81F
			/// @DnDArgument : "speed" "30"
			speed = 30;
		
			/// @DnDAction : YoYo Games.Movement.Add_Motion
			/// @DnDVersion : 1
			/// @DnDHash : 251BCA7F
			/// @DnDParent : 5DF7A81F
			/// @DnDArgument : "dir" "direction"
			/// @DnDArgument : "speed" "speed"
			motion_add(direction, speed);
		}
	}
}