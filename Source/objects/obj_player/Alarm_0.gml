/// @description Insert description here
// You can write your code in this editor
if(obj_controller.state == obj_controller.PLAYABLE){
	obj_player.sprite_index.image_index = 0;
}

if(playerHited){
	obj_player.sprite_index.image_index = 2;
	playerHited = false;
}