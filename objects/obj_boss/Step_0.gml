/// @description boss shoots its own bullets with cooldown

//bounces off invisible walls
move_bounce_solid(true)

if (shootCooldown <= 0) {
    // Create two bullets for its two cannons
	
    var inst = instance_create_layer(x - 20, y, "Instances", obj_enemy_bullet);
	inst.direction = image_angle - 90;
	audio_play_sound(shoot, 1, false);
	
	var inst2 = instance_create_layer(x + 20, y, "Instances", obj_enemy_bullet);
	inst2.direction = image_angle - 90;
	audio_play_sound(shoot, 1, false);

    // Reset the cooldown with a random value
    shootCooldown = irandom_range(minCooldown, maxCooldown);
} else {
    // Decrease the cooldown timer
    shootCooldown -= 1;
}
