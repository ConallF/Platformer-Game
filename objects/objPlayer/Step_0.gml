/// @desc Core Player Logic

//get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

// Jumping
if (place_meeting(x,y+1,objWall)) && (key_jump)
{
	vsp = -jumpsp
}

//horizontal colision
if (place_meeting(x+hsp,y,objWall))
{
	while (!place_meeting(x+sign(hsp),y,objWall))
	{	
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
//vertical colision
if (place_meeting(x,y+vsp,objWall))
{
	while (!place_meeting(x,y+sign(vsp),objWall))
	{	
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting(x,y+1,objWall))
{
	sprite_index = sprPlayerA;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp = 0)
	{
	sprite_index = sprPlayer
	}
	else
	{
		sprite_index = sprPlayerR
	}
}

if (hsp != 0) image_xscale = sign(hsp);