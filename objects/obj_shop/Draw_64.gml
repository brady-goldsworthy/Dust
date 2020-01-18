/// @description 

if(shopping) {
	var spr = spr_shop_slot
	
	var center_x = (GUI_W div 2) - (sprite_get_width(spr) div 2);
	var center_y = (GUI_H div 2) - (sprite_get_height(spr) div 2);
	
	draw_sprite_ext(spr, 0, center_x, center_y, 1, 1, 0, c_white, 1);
	
	//draw_sprite( spr_shop, 0, 50, 50);
	
}
