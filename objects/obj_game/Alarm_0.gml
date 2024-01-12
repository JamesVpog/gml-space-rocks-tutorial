/// @description asteroid spawner


//only spawn asteroids in the rm_game
if (room != rm_game)
{
exit;
}

	
//spawn asteroids in the boundaries so player does not see them
if (choose(0,1) == 0)
{
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
}
else
{
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "instances", obj_astrd);
alarm[0] = 4 * room_speed; //trigger again in 4 seconds
// room_speed = number of steps the room will perform in a second