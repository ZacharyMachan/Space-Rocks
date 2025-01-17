//


switch(room){
	case rgame:
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		break;
	
	case rstart:
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,100, "SPACE ROCKS",
			6,6,0,c,c,c,c,1
		);	
		draw_text_transformed(
			room_width/2,250, 
@"DESTROY ALL ASTEROIDS TO WIN!



W/S: Move Forward & Back
A/D: Turn Left & Right
K: Shoot


>> PRESS ENTER TO START <<"
		,2.5,2.5,0
		);
		draw_set_halign(fa_left);
		break;
		
	case rwin:
		draw_set_halign(fa_center);
		var c = c_lime
		draw_text_transformed_color(
			room_width/2,100, "YOU WIN!",
			6,6,0,c,c,c,c,1
		);	
		draw_text_transformed(
			room_width/2,500, "FINAL SCORE: "+string(score) ,2.5,2.5,0
		);
		draw_text_transformed(
			room_width/2,600, ">> PRESS ENTER TO RESTART <<",2.5,2.5,0
		);
		break;
		
	case rlose:
		draw_set_halign(fa_center);
		var c = c_red
		draw_text_transformed_color(
			room_width/2,100, "GAME OVER!",
			6,6,0,c,c,c,c,1
		);	
		draw_text_transformed(
			room_width/2,500, "FINAL SCORE: "+string(score) ,2.5,2.5,0
		);
		draw_text_transformed(
			room_width/2,600, ">> PRESS ENTER TO RESTART <<",2.5,2.5,0
		);
		break;		
}