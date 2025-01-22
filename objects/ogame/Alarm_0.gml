//

//respawning asteroids
if(choose(0,1) == 0){
	//go down the side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	//go top or bottom
	var xx = irandom_range(0, room_height);
	var yy = choose(0, room_width);
}



//respawning timer for each difficulty
if(room == rgame_easy){
	(instance_create_layer(xx, yy, "Instances", oasteroid));
	alarm [0] = 4*room_speed;
	audio_play_sound(sndrespawn, 1, false);
	exit;
}

if(room == rgame_medium){
	(instance_create_layer(xx, yy, "Instances", oasteroid));
	alarm [0] = 2*room_speed;
	audio_play_sound(sndrespawn, 1, false);
	exit;
}

if(room == rgame_hard){
	(instance_create_layer(xx, yy, "Instances", oasteroid));
	alarm [0] = 1*room_speed;
	audio_play_sound(sndrespawn, 1, false);
	exit;
}

