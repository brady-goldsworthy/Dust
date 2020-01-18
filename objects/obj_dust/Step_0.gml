/// @description 

if(knockback) {
	//moveX = -1 * (x - lerp(x, target_x, 0.1));
	//moveY = -1 * (y - lerp(y, target_y, 0.1));
	
	//var inst = scr_enemy_collision();
	//if(inst != noone) {
	//	if(inst.isEnemy) {
	//		scr_enemy_kb(inst, x, y, inst.x, inst.y, 15);
	//		state = states.idle;
	//	}
	//	else {
	//		state = states.idle;
	//	}
	//}
	//else {
	//	x = lerp(x, target_x, 0.1);
	//	y = lerp(y, target_y, 0.1);
	
	//}

	x = lerp(x, target_x, 0.1);
	y = lerp(y, target_y, 0.1);
	

	if((x > target_x - 1 && x < target_x + 1) && (y > target_y - 1 && y < target_y + 1)) {
		knockback = false;;
	}
}

if (sucking){
	x = lerp(x, obj_player.x, 0.1);
	y = lerp(y, obj_player.y, 0.1);	
	sucking = false;
}
else if (sucking_alt) {
	x = lerp(x, obj_player.x + lengthdir_x(10, obj_player.image_angle), 0.01);
	y = lerp(y, obj_player.y + lengthdir_y(10, obj_player.image_angle), 0.01);	
	sucking_alt = false;
}

var spawn = irandom_range(0, dust_rate);
if (spawn == 1) {
	var _x = random_range(x - 5, x + 5);
	var _y = random_range(y - 5, y + 5);
	instance_create_layer(_x, _y, "Dust", obj_dust);	;
}


