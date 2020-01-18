camera_set_view_size(VIEW, VIEW_W, VIEW_H);
//display_set_gui_size(camera_get_VIEW_Width(VIEW), camera_get_VIEW_Height(VIEW));

//Logic to track player object
if(instance_exists(obj_player)) {
	var _x = 0;
	var _y = 0;
	
	var shake_x = random_range(-screen_shake, screen_shake);
	var shake_y = random_range(-screen_shake, screen_shake);
	
	// clamping x value between 0 and right edge of room
	_x = clamp(obj_player.x - VIEW_W/2, 0, room_width - VIEW_W); 
	
	// clamping y value between 0 and bottom edge of room
	_y = clamp(obj_player.y - VIEW_H/2, 0,  room_height - VIEW_H);
	
	//Used in smoothly transitioning camera back towards player
	var _current_x = camera_get_view_x(VIEW);
	var _current_y = camera_get_view_y(VIEW);
	
	var _spd = .1; //Camera speed
	
	//var shake_x = random_range(-screen_shake, screen_shake);
	//var shake_y = random_range(-screen_shake, screen_shake);
	
	var lerp_x = lerp(_current_x, _x, _spd) + shake_x;
	var lerp_y = lerp(_current_y, _y, _spd) + shake_y;
	
	//Move view towards player by a percentage
	camera_set_view_pos(VIEW, lerp_x, lerp_y);
	
	screen_shake *= 0.9;
	
}