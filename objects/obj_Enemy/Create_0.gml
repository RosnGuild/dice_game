/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 60353186
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C51B517
/// @DnDArgument : "funcName" "bounce_off_player"
function bounce_off_player() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51BCAED9
	/// @DnDParent : 2C51B517
	/// @DnDArgument : "var" "collided_player"
	/// @DnDArgument : "value" "false"
	if(collided_player == false)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4CDB6005
		/// @DnDParent : 51BCAED9
		/// @DnDArgument : "x" "obj_Player.x"
		/// @DnDArgument : "y" "obj_Player.y"
		direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7F23EC8A
		/// @DnDParent : 51BCAED9
		/// @DnDArgument : "speed" "30"
		speed = 30;
	
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 2D6EF9AD
		/// @DnDParent : 51BCAED9
		/// @DnDArgument : "dir" "direction"
		/// @DnDArgument : "speed" "speed"
		motion_add(direction, speed);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3E86756C
	/// @DnDParent : 2C51B517
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5BCCAA4A
		/// @DnDParent : 3E86756C
		/// @DnDArgument : "x" "start_x"
		/// @DnDArgument : "y" "start_y"
		direction = point_direction(x, y, start_x, start_y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 794315C8
		/// @DnDParent : 3E86756C
		/// @DnDArgument : "speed" "30"
		speed = 30;
	
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 1671B145
		/// @DnDParent : 3E86756C
		/// @DnDArgument : "dir" "direction"
		/// @DnDArgument : "speed" "speed"
		motion_add(direction, speed);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 01B30C6E
		/// @DnDInput : 2
		/// @DnDParent : 3E86756C
		/// @DnDArgument : "expr" "x == start_x"
		/// @DnDArgument : "expr_1" "y == start_y"
		if(x == start_x && y == start_y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FD95797
			/// @DnDParent : 01B30C6E
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "attacking"
			attacking = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38307EF3
			/// @DnDParent : 01B30C6E
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "collided_player"
			collided_player = false;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5A600F7D
			/// @DnDParent : 01B30C6E
			speed = 0;
		}
	}
}