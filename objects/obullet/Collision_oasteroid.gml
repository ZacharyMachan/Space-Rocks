//

score += 1000

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == sasteroid_large){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", oasteroid);
			new_asteroid.sprite_index = sasteroid_medium;
		}
	} else if(sprite_index == sasteroid_medium){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", oasteroid);
			new_asteroid.sprite_index = sasteroid_small;
		}
	}
	repeat(10){
	instance_create_layer(x,y, "Instances", odebris);
	}
}