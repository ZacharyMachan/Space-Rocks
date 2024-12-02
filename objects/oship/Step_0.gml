// a

if (keyboard_check(ord("A"))){
	image_angle +=5;	
}
if (keyboard_check(ord("D"))){
    image_angle -=5;
}
if (keyboard_check(ord("W"))){
    motion_add(image_angle, 0.1);
}


