/// @description asteroid with speed and dir

randomize();
//random sprite at start
sprite_index = choose(spr_astrd_large, spr_astrd_med, spr_astrd_small);

//movement of astrd
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = 1;