/// @description 

#macro COLLISION_BUFFER 20

enum player_states {
	idle,
	move,
	vac,
	cooldown
}

enum dir {
	r = 0,
	ur = 45,
	u = 90,
	ul = 135,
	l = 180,
	dl = 225,
	d = 270,
	dr = 315
}

move_spd = 3;

sweep_cooldown = room_speed;

moveX = 0;
moveY = 0;

vac = 0;
state = player_states.idle;

col_list = ds_list_create();

instance_create_layer(x, y, "Instances", obj_collect_box);
dust_count = 0;


