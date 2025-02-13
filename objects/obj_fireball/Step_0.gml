if (place_meeting(x, y, obj_player)) && obj_player.invicible == false
{
	instance_destroy()
	global.hp -= 1
	obj_player.invicible = true
	obj_player.alarm[0] = 30
	audio_play_sound(hit1, 0, false)
}
else{
	if(place_meeting(x, y, obj_player)) && obj_player.invicible == true
	{
		instance_destroy();
	}
}