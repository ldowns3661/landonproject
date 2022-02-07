/// @description Insert description here
// You can write your code in this editor
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_up);

xdirection = right - left;

xvector = xspeed * xdirection;
yvector = yvector + grv;

// check to see if proposed move would collide
if (place_meeting(x + xvector, y, oFloor))
	{
//check one pixel in the desired xdirection until we hit the wall
// ! = "NOT"
		while(!place_meeting(x + xdirection, y, oFloor))
		{
		x = x + xdirection;	
		}
xvector = 0;
	}
// otherwise do the legal move
x = x + xvector;

if (place_meeting(x, y + yvector, oFloor))
	{
//check one pixel in the desired direction until we hit the wall
// ! = "NOT"
// sign yvector will = 1 if yvector is positive or
// -1 if yvector is negative
		while(!place_meeting(x, y + sign(yvector), oFloor)) 
		{
		y = y + sign(yvector);	
		}
yvector = 0;
	}
y = y + yvector;


//if we are touching ground and we press jump 
if (place_meeting(x, y + 1, oFloor) and (jump))
{
yvector = jumpforce;


}


