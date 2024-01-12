/// @description Insert description here
// You can write your code in this editor

//restart the room when player dies
with (obj_game)
{
	alarm[1] = room_speed;
}

audio_play_sound(lose, 1, false);

lives -= 1;

instance_destroy();

//make debris from dying
repeat(10)
{
	instance_create_layer(x, y, "Instances", obj_debris);
}
