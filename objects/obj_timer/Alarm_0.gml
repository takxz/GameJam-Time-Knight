if (obj_player.hspd == 0) && (obj_player.vspd == 0)
{
	time_millisec = time_millisec
}else{
	time_millisec -= 1
}

if time_millisec = -1 {
	time_millisec = 9
	time_sec -= 1
}

if time_sec = -1 {
	time_sec = 59
	time_min -= 1
}

if !(time_sec = 0 && time_min = 0 && time_millisec = 0) {
alarm[0] = 6
} else {
game_end()	
}