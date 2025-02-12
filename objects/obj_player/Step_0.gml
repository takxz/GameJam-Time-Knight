press_right = keyboard_check(vk_right);
press_left = keyboard_check(vk_left);
press_jump = keyboard_check(vk_space);

var move = press_right - press_left
hspd = move * walkspd
vspd = vspd + grav;

if (place_meeting(x, y + 1, obj_mur)) && (press_jump)
{
	vspd = -10
}

if (place_meeting(x + hspd, y, obj_mur))
{
	while (!place_meeting(x + sign(hspd), y, obj_mur))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
x = x + hspd;

if (place_meeting(x, y + vspd, obj_mur))
{
	while (!place_meeting(x, y + sign(vspd), obj_mur))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd

if (!place_meeting(x, y + 1, obj_mur))
{
	sprite_index = spr_jump;
}
else
{
	if(hspd == 0)
	{
		sprite_index = spr_idle;	
	}
	else
	{
		sprite_index = spr_run;
	}
}

if (hspd != 0)
{
	image_xscale = sign(hspd)	
}