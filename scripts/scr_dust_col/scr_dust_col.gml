///@description scr_dust_col
///@arg dust_id
///@arg source_x
///@arg source_y
///@arg dust_x
///@arg dust_y

var dust = argument0;
var source_x = argument1;
var source_y = argument2;
var dust_x = argument3;
var dust_y = argument4;

var dir = point_direction(source_x, source_y, dust_x, dust_y);

with(dust) {	
	//scr_play_sound_random_pitch(hurt_sound, 1.0, 0.2, 900, false);
	
	var kb = 15;
	
	if(kb > 0) {
		knockback = true;
		target_x = x + lengthdir_x(kb, dir);
		target_y = y + lengthdir_y(kb, dir);
	}
}





