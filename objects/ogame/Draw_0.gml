//


switch(room){
	case rgame_easy:
		draw_set_halign(fa_left);
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,20, "EASY",
			4,4,0,c,c,c,c,1
		);	
		break;
	case rgame_medium:
		draw_set_halign(fa_left);
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,20, "MEDIUM",
			4,4,0,c,c,c,c,1
		);	
		break;
	case rgame_hard:
		draw_set_halign(fa_left);
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,20, "HARD",
			4,4,0,c,c,c,c,1
		);	
			break;
	case rgame_endless:
		draw_set_halign(fa_left);
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		draw_set_halign(fa_center);
		draw_set_alpha(1)
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2,20, "ENDLESS",
			4,4,0,c,c,c,c,1
		);	
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


>> CHOOSE DIFFICULTY TO START <<"
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
		
		if room_previous(rgame_easy){
			draw_set_halign(fa_center);
			var c = c_lime
			draw_text_transformed_color(
			room_width/2,250, "YOU BEAT EASY!",
			4,4,0,c,c,c,c,1
			);	
		}
		if room_previous(rgame_medium){
			draw_set_halign(fa_center);
			var c = c_lime
			draw_text_transformed_color(
			room_width/2,250, "YOU BEAT MEDIUM!",
			4,4,0,c,c,c,c,1
			);	
		}
		if room_previous(rgame_hard){
			draw_set_halign(fa_center);
			var c = c_lime
			draw_text_transformed_color(
			room_width/2,250, "YOU BEAT HARD!",
			4,4,0,c,c,c,c,1
			);	
		}
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
		if room_previous(rgame_endless){
			draw_set_halign(fa_center);
			var c = c_red
			draw_text_transformed_color(
			room_width/2,250, "ENDLESS",
			4,4,0,c,c,c,c,1
			);	
		}
		break;		
}