// a

if (keyboard_check(ord("A"))){
	image_angle +=5;	
}
if (keyboard_check(ord("D"))){
    image_angle -=5;
}
if (keyboard_check(ord("W"))){
    motion_add(image_angle, 0.05);
}
if (keyboard_check(vk_shift)){
    motion_add(image_angle, 0.05);
}
speed = clamp(speed, 0, 6);

move_wrap(true, true,sprite_width/2);

