/// @description Insert description here
// You can write your code in this editor

if(instance_number(object_index) > 1) {
	instance_destroy();
	exit;
}

enum CAM_MODE {
	targeted,
	free,
}

state = CAM_MODE.targeted;

//Props
view_width = 1024;
view_height = 600;
display_width = display_get_width();
display_height = display_get_height();
aspect_ratio = display_width / display_height;
max_zoom = min(4, floor(display_height / view_height));
zoom = max(max_zoom - 1, 1);
window_width = view_width * zoom;
window_height = view_height * zoom;
gui_width = view_width;
gui_height = view_height;
#macro CAM view_camera[0]

window_set_size(window_width, window_height);
var gui_zoom = 1;
display_set_gui_size(gui_width * gui_zoom, gui_height * gui_zoom);
var px_density = 4;
surface_resize(application_surface, view_width * px_density, view_height * px_density);

//Center the window
alarm[0] = 1;





