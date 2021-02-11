


if ( keyboard_check(vk_left) )
{
	x = x - 2;
}

if ( keyboard_check(vk_right) )
{
	x = x + 2;
}


if x >= room_width
{
	x = 0;
}

if x < 0
{
	x = room_width - 1;
}