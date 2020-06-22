/// @description Insert description here
// You can write your code in this editor

if(life <= 0){
	life = random(2) + 1;
	obj_controller.respawnEnemy = true;
}

if(obj_player.hited){
	switch(currentEnemy){
		case FRANKSTEIN:
			obj_enemy.sprite_index.image_index = 1;	
			break;
		case MERMAID:
			obj_enemy.sprite_index.image_index = 3;
			break;
		case VAMPIRE:
			obj_enemy.sprite_index.image_index = 5;
			break;
		case SACI_PERERE:
			obj_enemy.sprite_index.image_index = 7;
			break;
	}
		
}else{
		switch(currentEnemy){
		case FRANKSTEIN:
			obj_enemy.sprite_index.image_index = 0;	
			break;
		case MERMAID:
			obj_enemy.sprite_index.image_index = 2;
			break;
		case VAMPIRE:
			obj_enemy.sprite_index.image_index = 4;
			break;
		case SACI_PERERE:
			obj_enemy.sprite_index.image_index = 6;
			break;
	}
}
