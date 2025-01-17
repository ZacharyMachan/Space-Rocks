//


if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rstart:
			audio_play_sound(sndstart, 1, false);
			room_goto(rgame);
			break;
		
		case rwin:
			audio_play_sound(sndmenu, 1, false);
		case rlose:
			audio_play_sound(sndmenu, 1, false);
			game_restart();
			break;
	}
}

if(room == rgame){
	if (score >= 100000){
	room_goto(rwin);
	audio_play_sound(sndwin, 1, false);
	}

	if(lives <= 0){
		room_goto(	rlose);
		audio_play_sound(sndlose, 1, false);
	}
}
