//



instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == sasteroid_large){
		score += 3000
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", oasteroid);
			new_asteroid.sprite_index = sasteroid_medium;
		}
	} else if(sprite_index == sasteroid_medium){
		score += 2000
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", oasteroid);
			new_asteroid.sprite_index = sasteroid_small;
		}
	}
	 if(sprite_index == sasteroid_small){
		score += 1000
	 }
	 
	repeat(10){
	instance_create_layer(x,y, "Instances", odebris);
	}
}