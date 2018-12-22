/// @description Insert description here
// You can write your code in this editor
draw_self();
if (scr_mouseOver(x,y, sprite_width, sprite_height))
{
	draw_circle(x, y, range, true);
}



var en = instance_nearest(x, y, obj_enemy);
if (en != noone)
{
	if(point_distance(x, y, en.x, en.y) <= range + 15)
	{
		if(!shooting)
		{
			alarm[0] = 1;
			shooting = true;
		}
		objectToShoot = en;
		if (scr_mouseOver(x,y, sprite_width, sprite_height))
		{
			draw_line(x, y, en.x, en.y);
		}
	}
	else
	{
		shooting = false;
		objectToShoot = noone;
	}
}
