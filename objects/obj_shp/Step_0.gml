/// @description controls and shoot

if (keyboard_check(vk_left))
{
	image_angle += 5;
}

if (keyboard_check(vk_right))
{
	image_angle -= 5;
}

if (keyboard_check(vk_up))
{
	motion_add(image_angle, 0.05);
}

move_wrap(true, true, sprite_width/2);

//make bullet
if (keyboard_check_pressed(vk_space))
{
	if (has_powerup)
	{

		var inst = instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle + 15;
	
		var inst2 = instance_create_layer(x, y, "Instances", obj_bullet);
		inst2.direction = image_angle - 15;
			
		var inst3 = instance_create_layer(x, y, "Instances", obj_bullet);
		inst3.direction = image_angle;
		
		power_up_timer -= 1;
		
	}
	else
	{
		var inst = instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle;
	}
	audio_play_sound(shoot, 1, false);
	
	if (power_up_timer <= 0)
	{
		has_powerup = false;
	}
}

