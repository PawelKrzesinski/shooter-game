/// @description Insert description here
// You can write your code in this editor

key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

pos += key_down - key_up;


buttons_length = array_length(buttons[menu_level]);

if(pos >= buttons_length){
	pos = 0;
}
if(pos < 0) {
	pos = buttons_length - 1;
}



if(accept_key){
	var stored_menu_level = menu_level;
	switch(menu_level) {
		case 0: 
			switch (pos) {
				// Start game
				case 0:
					room_goto_next()
					break;
				// Settings
				case 1:
					menu_level = 1; 
					break;
				// Quit game
				case 2:
					game_end();
					break;
			}
			break;
			
		case 1:
			switch (pos) {
				// Resolution
				case 0:
					break;
				// Brightness
				case 1:
					break;
				// Sound
				case 2:
					break;
				// Back
				case 3:
					menu_level = 0;
					break;
			}
			break;
	}
	if (stored_menu_level != menu_level) {
		pos = 0;
		buttons_length = array_length(buttons[menu_level]);
	}
}

