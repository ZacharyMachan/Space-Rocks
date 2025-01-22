//
if(room == rgame_easy){
	repeat (6){
		var xx = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		var yy = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		(instance_create_layer(xx, yy, "Instances", oasteroid))
	}

	alarm[0] = 60 
}




if(room == rgame_medium){
	repeat (6){
		var xx = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		var yy = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		(instance_create_layer(xx, yy, "Instances", oasteroid))
	}

	alarm[0] = 60 
}




if(room == rgame_hard){
	repeat (6){
		var xx = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		var yy = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		(instance_create_layer(xx, yy, "Instances", oasteroid))
	}

	alarm[0] = 60 
}

if(room == rgame_endless){
	repeat (6){
		var xx = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		var yy = choose( 
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_height)
		);
		(instance_create_layer(xx, yy, "Instances", oasteroid))
	}

	alarm[0] = 60 
}