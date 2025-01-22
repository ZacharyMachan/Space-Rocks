//


switch(room){
	case rgame_easy:
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		break;
	case rgame_medium:
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		break;
	case rgame_hard:
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
		
	case rdifficulty:
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,100, "SPACE ROCKS",
			6,6,0,c,c,c,c,1
		);	
		draw_text_transformed(
			room_width/2,250, 
@"CHOOSE YOUR DIFFICULTY!


1: Easy - (Score 50,000 Points To Win!)
2: Medium - (Score 100,000 Points To Win!)
3: Hard - (Score 500,000 Points To Win!)
4: Endless - (Destroy Asteroids Till You Die!)


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