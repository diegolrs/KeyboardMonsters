/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(ord(randomChar))){
	show_debug_message("YOU PRESSED " + randomChar);	
	obj_player.hited = true;
}else{
	points = -1;
	state = NOT_PLAYABLE;
	show_debug_message("THE RIGHT ONE WAS " + randomChar);	
}