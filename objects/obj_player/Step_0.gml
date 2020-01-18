/// @description 

image_angle = point_direction(x, y, mouse_x, mouse_y);

input_right = keyboard_check(ord("D"));
input_left = keyboard_check(ord("A"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));

moveX = (input_right - input_left) * move_spd;
moveY = (input_down - input_up) * move_spd;

//if(abs(moveX) > 0 || abs(moveY > 0)) {
	#region Movement
	
	if (moveX != 0) {
			var xCol = instance_place(x + moveX ,y, obj_collision);
			if(xCol != noone) {
				
				player_collision = true;
				
				repeat(abs(moveX)) {
					if(!place_meeting((x+sign(moveX) * COLLISION_BUFFER), y, obj_collision)) {
						x+= sign(moveX);
					}
					else break;
				}
				moveX = 0;
			}
		}

		//Handle Y collisions
		if(moveY != 0) {
			var yCol = instance_place(x ,y + moveY, obj_collision);
			if(yCol != noone) {
				
				player_collision = true;
				
				repeat(abs(moveY)) {
					if(!place_meeting(x, (y+sign(moveY) * COLLISION_BUFFER), obj_collision)) {
						y+= sign(moveY);
					}
					else break;
				}
				moveY = 0;
			}
		}	
		
		x += moveX;
		y += moveY;

		
		#endregion
//}

switch(state) {
	case player_states.idle:
		if(mouse_check_button_pressed(mb_left)) {
			state = player_states.vac;
			vac = instance_create_layer(x, y, "Instances", obj_vacbox)
			
		}
		break;
	case player_states.vac:
		if(mouse_check_button_released(mb_left)) {
			state = player_states.idle;
			instance_destroy(vac);
		}
	break;
}

instance_place_list(x, y, obj_dust, col_list, false);

var col_size = ds_list_size(col_list)
if(col_size > 0) {

	var i = 0; repeat(col_size) {
		var dust = col_list[| i];
		scr_dust_col(dust, x, y, dust.x, dust.y);
		i++;
	}


	ds_list_clear(col_list);
}


