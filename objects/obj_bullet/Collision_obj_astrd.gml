/// @description Insert description here
// You can write your code in this editor

audio_play_sound(rockdestroy, 1, false);
score += 10;

instance_destroy() //destroys bullet

with (other)
{
instance_destroy() //destroys asteroid
if (sprite_index == spr_astrd_large)
	{
	repeat(2)
		{
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_astrd);
		new_asteroid.sprite_index = spr_astrd_med;
		}
	}
else if (sprite_index == spr_astrd_med)
	{
	repeat(2)
		{
		var new_asteroid = instance_create_layer(x, y, "Instances", obj_astrd);
		new_asteroid.sprite_index = spr_astrd_small;
		}
	}
repeat(10)
	{
	instance_create_layer(x, y, "Instances", obj_debris);
	}
}