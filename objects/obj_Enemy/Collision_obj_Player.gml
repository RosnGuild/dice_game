/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C3C0DF4
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "collided_player"
collided_player = true;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 5D5D59D5
/// @DnDArgument : "x" "start_x"
/// @DnDArgument : "y" "start_y"
direction = point_direction(x, y, start_x, start_y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4CF081E7
/// @DnDArgument : "speed" "30"
speed = 30;

/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 2DB68E6E
/// @DnDArgument : "dir" "direction"
/// @DnDArgument : "speed" "speed"
motion_add(direction, speed);