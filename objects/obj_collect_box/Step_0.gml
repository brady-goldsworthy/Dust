/// @description 

image_angle = point_direction(x, y, mouse_x, mouse_y);

x = obj_player.x + lengthdir_x(10, image_angle);
y = obj_player.y + lengthdir_y(10, image_angle);

instance_place_list(x, y, obj_dust, collect_col, false);

var col_size = ds_list_size(collect_col)
if(col_size > 0) {

	var i = 0; repeat(col_size) {
		var dust = collect_col[| i];
		instance_destroy(dust);
		i++;
		obj_player.dust_count ++; 
	}
	ds_list_clear(collect_col);
}