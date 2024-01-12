/// @description Boss inits

direction = 0;

speed = 0.7;

image_angle = 0

// variables to use for shooting
minCooldown = 30;  // Minimum cooldown frames
maxCooldown = 120; // Maximum cooldown frames
shootCooldown = irandom_range(minCooldown, maxCooldown);
boss_health = 5;