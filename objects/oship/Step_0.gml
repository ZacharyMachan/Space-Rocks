//

//movement

if (keyboard_check(ord("A"))){
	image_angle +=4;	
}
if (keyboard_check(ord("D"))){
    image_angle -=4;
}
if (keyboard_check(ord("W"))){
    motion_add(image_angle, 0.05)
}
else if (speed>0){
	speed -= 0.025;
}
else if (speed<0){
	speed += 0.025;
}

if (keyboard_check(ord("S"))){
    motion_add(image_angle, -0.075);
}

//shooting
if (keyboard_check_pressed(ord("K"))){
    var inst = instance_create_layer(x,y, "Instances", obullet);
	inst.direction = image_angle;
}

//speed cap
speed = clamp(speed, 0, 5);

//wrap around screen
move_wrap(true, true,sprite_width/2);

