/// @description Insert description here
// You can write your code in this editor

gw = display_get_gui_width();
gh = display_get_gui_height();

var vw = sprite_get_width(s_guide);
var vh = sprite_get_height(s_guide);

var view_center_x = vw/2;
var view_center_y = vh/2;

var start_x = x;
var start_y = y;

var pos_x = [start_x, gw/2 - (view_center_x - start_x), gw - (vw - start_x)];
var pos_y = [start_y, gh/2 - (view_center_y - start_y), gh - (vh - start_y)];


switch(anchor){
	case Anchor.top_left:
		x = pos_x[Alignment.left];
		y = pos_y[Alignment.top];
		break;
	case Anchor.top_center:
		x = pos_x[Alignment.center];
		y = pos_y[Alignment.top];
		break;
	case Anchor.top_right:
		x = pos_x[Alignment.right];
		y = pos_y[Alignment.top];
		break;
	case Anchor.middle_left:
		x = pos_x[Alignment.left];
		y = pos_y[Alignment.middle];
		break;
	case Anchor.middle_center:
		x = pos_x[Alignment.center];
		y = pos_y[Alignment.middle];
		break;
	case Anchor.middle_right:
		x = pos_x[Alignment.right];
		y = pos_y[Alignment.middle];
		break;
	case Anchor.bottom_left:
		x = pos_x[Alignment.left];
		y = pos_y[Alignment.bottom];
		break;
	case Anchor.bottom_center:
		x = pos_x[Alignment.center];
		y = pos_y[Alignment.bottom];
		break;
	case Anchor.bottom_right:
		x = pos_x[Alignment.right];
		y = pos_y[Alignment.bottom];
		break;
}