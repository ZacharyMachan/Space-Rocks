//

lives -= 1;

audio_play_sound(snddeath, 1, false)

instance_destroy();

repeat(10){
	instance_create_layer(x,y, "Instances", odebris);
}