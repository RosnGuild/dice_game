/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 60353186
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7AEB43EC
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "upcoming_move_numbers"
upcoming_move_numbers = [];

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 41E5219D
/// @DnDArgument : "function" "enemy_setup_initial_move_numbers"
enemy_setup_initial_move_numbers();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0143B323
/// @DnDArgument : "funcName" "bounce_off_player"
function bounce_off_player() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6130A062
	/// @DnDParent : 0143B323
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
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DD7AA9E
		/// @DnDParent : 6130A062
		/// @DnDArgument : "expr" "[]"
		/// @DnDArgument : "var" "current_move_numbers"
		current_move_numbers = [];
	}
}