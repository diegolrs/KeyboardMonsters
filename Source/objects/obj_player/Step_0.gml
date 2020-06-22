/// @description Insert description here
// You can write your code in this editor
if(hited && obj_controller.state == obj_controller.PLAYABLE){
	if (alarm[0] < 0) {
		alarm[0] = 5;
	}

	if (alarm[1] < 0) {
		alarm[1] = 5;
	}

	obj_player.sprite_index.image_index = 1;
}else{
	hited = false;
}

if(obj_controller.state == obj_controller.PLAYABLE){
	playerHited = false;
}

if(obj_controller.state == obj_controller.NOT_PLAYABLE && !playerHited){
	playerHited = true;
	
	if (alarm[0] < 0) {
		alarm[0] = 5;
	}
}else if(obj_controller.state == obj_controller.NOT_PLAYABLE){
	if (alarm[2] < 0) {
		alarm[2] = 10;
	}
	
}



	