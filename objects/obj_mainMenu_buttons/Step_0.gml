if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
{
	image_index = 0;
}
if (!point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
{
	image_index = 1;
}
else{
	if (mouse_check_button_pressed(mb_left))
	{
		image_index = 2;
		event_user(0);
	}
}