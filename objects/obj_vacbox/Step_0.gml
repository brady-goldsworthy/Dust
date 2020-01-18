/// @description 

x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

instance_place_list(x, y, obj_dust, vac_col, false);

var col_size = ds_list_size(vac_col)
if(col_size > 0) {

	var i = 0; repeat(col_size) {
		var dust = vac_col[| i];
		dust.sucking = true;
		i++;
	}
	ds_list_clear(vac_col);
}