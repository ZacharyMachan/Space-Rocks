//


if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rstart:
			audio_play_sound(sndmenu, 1, false);
			room_goto(rdifficulty);
			break;
		case rwin:
			audio_play_sound(sndmenu, 1, false);
		case rlose:
			audio_play_sound(sndmenu, 1, false);
			game_restart();
			break;
	}
}

if(keyboard_check_pressed(vk_escape)){
	switch(room){
		case rdifficulty:
			audio_play_sound(sndmenu, 1, false);
			room_goto(rstart)
	}
}

//difficulties

if keyboard_check(ord("1")){
	switch(room){
		case rdifficulty:
			room_goto(rgame_easy);
			audio_play_sound(sndstart, 1, false);
			break;
	}
}

if keyboard_check(ord("2")){
	switch(room){
		case rdifficulty:
			room_goto(rgame_medium);
			audio_play_sound(sndstart, 1, false);
			break;
	}
}

if keyboard_check(ord("3")){
	switch(room){
		case rdifficulty:
			room_goto(rgame_hard);
			audio_play_sound(sndstart, 1, false);
			break;
	}
}

if keyboard_check(ord("4")){
	switch(room){
		case rdifficulty:
			room_goto(rgame_endless);
			audio_play_sound(sndstart, 1, false);
			break;
	}
}

if(room == rgame_easy){
	if (score >= 50000){
	room_goto(rwin);
	audio_play_sound(sndwin, 1, false);
	}
	if(lives <= 0){
		room_goto(rlose);
		audio_play_sound(sndlose, 1, false);
	}
}
if(room == rgame_medium){
	if (score >= 100000){
	room_goto(rwin);
	audio_play_sound(sndwin, 1, false);
	}
	if(lives <= 0){
		room_goto(rlose);
		audio_play_sound(sndlose, 1, false);
	}
}
if(room == rgame_hard){
	if (score >= 250000){
	room_goto(rwin);
	audio_play_sound(sndwin, 1, false);
	}
	if(lives <= 0){
		room_goto(rlose);
		audio_play_sound(sndlose, 1, false);
	}
}
if(room == rgame_endless){
	if(lives <= 0){
		room_goto(rlose);
		audio_play_sound(sndlose, 1, false);
	}
}