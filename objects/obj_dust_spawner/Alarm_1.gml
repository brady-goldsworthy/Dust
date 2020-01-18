if(minTime > 0.5) {
	minTime -= 0.1;
	maxTime -= 0.1;
	
	show_debug_message("MinTime: " + string(minTime));
	show_debug_message("MaxTime: " + string(maxTime));
}

alarm[1] = room_speed * 1;