/// @desc Core Player Logic

//get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

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