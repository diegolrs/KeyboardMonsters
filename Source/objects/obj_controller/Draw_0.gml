/// @description Insert description here
// You can write your code in this editor

if(state == PLAYABLE) {
	canDraw = false;
	
	draw_set_halign(fa_left);
	draw_set_font(font1);
	draw_text(20, 20, "Score: ");
	draw_text(130, 20, points);

	draw_set_font(font1);
	draw_text(20, 60, "High Score: ");
	draw_text(215, 60, highscore);
	
	// Time bar ---------------------
	xOffset = 220;
	yOffset = 180;
	width = 280;
	height = 40;

	draw_set_color(c_black);
	draw_rectangle(xOffset, yOffset, xOffset + width, yOffset + height, false);

	draw_set_color(c_red);
	draw_rectangle(xOffset, yOffset, xOffset + (width*time/fullTime), yOffset + height, false);

	// Box sprite -------------------
	draw_set_color(c_white);
	draw_self();
	
	// Random character -------------
	draw_set_font(font);
	
	switch(randomChar){
		case "M": case "W": 
			draw_text(x - 30, y - 30, randomChar);
			break;
		case "Q":
			draw_text(x - 25, y - 30, randomChar);
			break;
		case "I": case "J":
			draw_text(x - 15, y - 30, randomChar);
			break;
		default:
			draw_text(x - 20, y - 30, randomChar);
			break;
	}
		
}else if(state == NOT_PLAYABLE){
	if(!canDraw){
		if (alarm[0] < 0) {
			alarm[0] = 25;
		}
	}
	
	if(canDraw){
		draw_set_font(font2);
		draw_set_halign(fa_center);
		draw_text(view_wport /2 -  150, 60, "High Score");
		draw_text(view_wport /2 -  150, 140, highscore);	
	}
}
