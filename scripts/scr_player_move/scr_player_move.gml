///@description scr_player_move

 var _spd = move_spd;
 var _dir;
 
var xtarg = x + moveX
var ytarg = y + moveY;

if(moveX > 0) {
	if(moveY > 0) {
		_dir = dir.dr;
	}
	else if (moveY < 0) {
		_dir = dir.ur;	
	}
	else _dir = dir.r;
}
else if (moveX < 0) {
		if(moveY > 0) {
		_dir = dir.dl;
	}
	else if (moveY < 0) {
		_dir = dir.ul;	
	}
	else _dir = dir.l;	
}
else {
	if(moveY > 0) {
		_dir = dir.d;
	}
	else if (moveY < 0) {
		_dir = dir.u;	
	}
}

if (!place_meeting(xtarg, ytarg, obj_collision)) {
	x = xtarg;
    y = ytarg;
}

else {
    var sweep_interval = 10;
    
    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
            var angle_to_check = _dir+angle*multiplier;
            xtarg = x+lengthdir_x(_spd, angle_to_check);
            ytarg = y+lengthdir_y(_spd, angle_to_check);     
			if (!place_meeting(xtarg, ytarg, obj_collision)) {
				x = xtarg;
			    y = ytarg;
				exit;
			}
        }
    }
}