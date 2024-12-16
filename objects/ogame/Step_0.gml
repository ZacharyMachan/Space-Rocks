//

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rstart:
			room_goto(rgame);
			break;
		
		case rwin:
		case rlose:
			game_restart();
			break;
	}
}

if(room == rgame){
	if(score >= 100000){
	room_goto(rwin);
	}

	if(lives <= 0){
		room_goto(	rlose);
	}
}