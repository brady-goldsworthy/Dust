/// @description 

//x = obj_vacbox.x - (sprite_get_width(spr_vacbox_short) div 2);
x = obj_vacbox.x;
y = obj_vacbox.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

instance_place_list(x, y, obj_dust, vac_col_outer, false);

var col_size = ds_list_size(vac_col_outer)
if(col_size > 0) {

	var i = 0; repeat(col_size) {
		var dust = vac_col_outer[| i];
		dust.sucking_alt = true;
		i++;
	}
	ds_list_clear(vac_col_outer);
}