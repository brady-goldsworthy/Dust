/// @description Insert description here

if(spawn) {
	var _x = irandom_range(x - x_range - min_range, x + x_range + min_range);
	var _y = irandom_range(y - y_range - min_range, y + y_range + min_range);
	
	instance_create_layer(_x, _y, "Instances", objType);
	spawn = false;
	alarm[0] = random_range(minTime * room_speed, maxTime * room_speed);
}

