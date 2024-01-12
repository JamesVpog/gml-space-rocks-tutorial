/// @description destroy bullet and astroid






instance_destroy() //destroys bullet

with (other) //in context of asteroid
{
	boss_health -= 1
	if (boss_health <= 0) 
	{
		audio_play_sound(rockdestroy, 1, false);
		score += 100; //score per boss
		instance_destroy() //destroys asteroid

		//create visual debris
		repeat(10)
			{
			instance_create_layer(x, y, "Instances", obj_debris);
			}
	}

}