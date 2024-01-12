/// @description destroy bullet and astroid



audio_play_sound(rockdestroy, 1, false);
score += 10; //score per asteroid

instance_destroy() //destroys bullet

with (other) //in context of asteroid
{
	
	instance_destroy() //destroys asteroid

	//split large asteroids into 2 medium asteroids
	if (sprite_index == spr_astrd_large)
		{
		repeat(2)
			{
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_astrd);
			new_asteroid.sprite_index = spr_astrd_med;
			}
		}
	//split medium asteroids into 2 small asteroids
	else if (sprite_index == spr_astrd_med)
		{
		repeat(2)
			{
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_astrd);
			new_asteroid.sprite_index = spr_astrd_small;
			}
		}
	//create visual debris
	repeat(10)
		{
		instance_create_layer(x, y, "Instances", obj_debris);
		}
}