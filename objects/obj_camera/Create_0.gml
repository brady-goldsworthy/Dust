/// @description Persistant Camera Object used to manage view
#macro VIEW view_camera[0]
#macro VIEW_W camera_get_view_width(view_camera[0])
#macro VIEW_H camera_get_view_height(view_camera[0])
#macro VIEW_CX camera_get_view_width(view_camera[0]) / 2
#macro VIEW_CY camera_get_view_height(view_camera[0]) / 2
#macro VIEW_X camera_get_view_x(view_camera[0])
#macro VIEW_Y camera_get_view_y(view_camera[0])
#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()

//application_surface_draw_enable(false);

aspect_ratio = display_get_width()/display_get_height();

view_height= 180; //Ideal view height
view_width=round(view_height*aspect_ratio); //Set width based on ideal height and aspect ratio
 
//Rounding resolution up in case of odd numbers
if(view_width & 1) view_width++;
if(view_height & 1) view_height++;

//Not completely sure what this is doing
max_window_scale = min(floor(display_get_width()/view_width),floor(display_get_height()/view_height));

if(view_height * max_window_scale == display_get_height())
    max_window_scale--;
    
window_scale = max_window_scale;

window_scaled_x = view_width * window_scale;
window_scaled_y = view_height * window_scale;

window_set_size(window_scaled_x,window_scaled_y);
//window_set_size(view_width,view_height);
alarm[0]=1;

surface_resize(application_surface,window_scaled_x,window_scaled_y);

display_set_gui_size(VIEW_W, VIEW_H);

screen_shake = 0;

