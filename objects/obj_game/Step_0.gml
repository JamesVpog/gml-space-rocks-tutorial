/// @description game flow

// hit enter to start, or game_restart
if (keyboard_check_pressed(vk_enter))
{
	switch(room)
	    {
		    case rm_start:
		        room_goto(rm_game);
		        break;
		    case rm_win:
		    case rm_gameover:
		        game_restart();
		        break;
	    }
}

//win or lose conditions
if room == rm_game
{
	//my own addition... boss battle
	
	if (score >= 500 && !boss_spawned)
	{
		//boss music
		//boss starts at the top of level and stop asteroid spawn
		
		instance_create_layer(200, 30, "Instances", obj_boss);
		boss_spawned = true
	}
	if score >= 1000 //win
	    {
			audio_play_sound(win, 1, false);
			room_goto(rm_win);
	    }
	if lives <= 0 //lose
	    {
			audio_play_sound(lose, 1, false);
			audio_stop_sound(music);
			room_goto(rm_gameover);
	    }
}
