/// @description Insert description here
// You can write your code in this editor
if (room != rm_game)
{
exit;
}
//spawn spawn powerups within half of boundary
if (choose(0,1) == 0)
{
	var xx2 = choose(0, room_width / 2);
	var yy2 = irandom_range(0, room_height / 2);
}
else
{
	var xx2 = irandom_range(0, room_width / 2);
	var yy2 = choose(0, room_height / 2);
}
instance_create_layer(xx2, yy2, "instances", obj_shoot_powerup);
alarm[2] = 6 * room_speed;

