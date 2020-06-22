/// @description Insert description here
// You can write your code in this editor

if(resetGame){
	points = -1;
	respawnChar = true;
	respawnEnemy = true;
	state = obj_controller.PLAYABLE;
	time = fullTime;	
	resetGame = false;
}

if(state == PLAYABLE){
	time--;
}

if(points > highscore){
	highscore = points;	
}

if(time <= 0){
	points = -1;
	time = fullTime;
	state = NOT_PLAYABLE;
}

if(respawnChar){
	numberForChar = irandom(25);	
	obj_enemy.life -= 1;
	respawnChar = false;
}

if(respawnEnemy){
	points += 1;
	respawnEnemy = false;
	show_debug_message("Was called");
	validate = irandom_range(0, 3);

	while(validate == obj_enemy.currentEnemy){
		validate = irandom_range(0, 3);
	}

	obj_enemy.currentEnemy = validate;
	
	time += 40;
	
	if(time > fullTime){
		time = fullTime;	
	}
	
}

switch(numberForChar){
	case 0:
		randomChar = "Q";
		break;
	case 1:
		randomChar = "W";
		break;
	case 2:
		randomChar = "E";
		break;
	case 3:
		randomChar = "R";
		break;
	case 4:
		randomChar = "T";
		break;
	case 5:
		randomChar = "Y";
		break;
	case 6:
		randomChar = "U";
		break;
	case 7:
		randomChar = "I";
		break;
	case 8:
		randomChar = "O";
		break;
	case 9:
		randomChar = "P";
		break;
	case 10:
		randomChar = "A";
		break;
	case 11:
		randomChar = "S";
		break;
	case 12:
		randomChar = "D";
		break;
	case 13:
		randomChar = "F";
		break;
	case 14:
		randomChar = "G";
		break;
	case 15:
		randomChar = "H";
		break;
	case 16:
		randomChar = "J";
		break;
	case 17:
		randomChar = "K";
		break;
	case 18:
		randomChar = "L";
		break;
	case 19:
		randomChar = "Z";
		break;
	case 20:
		randomChar = "X";
		break;
	case 21:
		randomChar = "C";
		break;
	case 22:
		randomChar = "V";
		break;
	case 23:
		randomChar = "B";
		break;
	case 24:
		randomChar = "N";
		break;
	case 25:
		randomChar = "M";
		break;
}