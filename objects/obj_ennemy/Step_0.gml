var player_x = obj_player.x;
var player_y = obj_player.y;

// Vérification de la direction à laquelle l'ennemi doit faire face
if (player_x < x) {
    image_xscale = -1; // Tourner l'ennemi vers la gauche
} else {
    image_xscale = 1; // Tourner l'ennemi vers la droite
}

vspd = vspd + grav;

if (place_meeting(x + hspd, y, obj_collision))
{
	while (!place_meeting(x + sign(hspd), y, obj_collision))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
x = x + hspd;

if (place_meeting(x, y + vspd, obj_collision))
{
	while (!place_meeting(x, y + sign(vspd), obj_collision))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd

if (!place_meeting(x, y + 1, obj_collision))
{
	sprite_index = spr_ennemy_idle;
}
else
{
	if(hspd == 0)
	{
		sprite_index = spr_ennemy_idle;	
	}
	else
	{
		sprite_index = spr_ennemy_idle;
	}
}

if (hspd != 0)
{
	image_xscale = sign(hspd)	
}

//Collision avec joueur
if place_meeting(x, y-1, obj_player) && obj_player.invicible == false
{
	if obj_player.y < y-10
	{
		with obj_player vspd = -4
		hp -= 1	
	}
else
	{
		if obj_player.invicible == false
	{
		global.hp -= 1
		obj_player.invicible = true
		obj_player.alarm[0] = 30
		}
	}
}

// tir

if is_firing = false {
	is_firing = true
	sprite_index = spr_ennemy_attack
	instance_create_layer(x, y, "Ennemy", obj_fireball)
	alarm[0] = choose(180, 240, 300)
}