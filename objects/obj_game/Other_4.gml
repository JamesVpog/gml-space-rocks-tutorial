/// @description start music and asteroids
//only play the music once, when it restarts if player dies


if (room == rm_game) 
{
	if audio_is_playing(music)
	{
		audio_stop_sound(music);
		
	}
	
	audio_play_sound(music, 2, true);
	//create 6 random places for asteroids to spawn in corners of the room
	repeat(6)
	    {
	    var xx = choose(irandom_range(0, room_width * 0.3), irandom_range(room_width * 0.7, room_width));
	    var yy = choose(irandom_range(0, room_height * 0.3), irandom_range(room_height * 0.7, room_height));
	    instance_create_layer(xx, yy, "Instances", obj_astrd);
	    }
	alarm[0] = 10; //create new ones after 60 steps/frames away
}