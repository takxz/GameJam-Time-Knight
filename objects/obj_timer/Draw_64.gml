draw_set_color(c_white)
if time_min < 1 {draw_set_color(c_red)}
draw_set_font(font_timer)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var offset_x = 50;
var offset_y = 10;

var time = ""
time += string(time_min)
time += ":"
if time_sec > 9 {time += ""+string(time_sec)}
if time_sec < 10 {time += "0"+string(time_sec)}
time += ":"
time += string(time_millisec)

draw_text(5, 5, time)
