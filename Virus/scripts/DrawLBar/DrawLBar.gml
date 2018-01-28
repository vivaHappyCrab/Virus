var c=c_red;
if(argument2<0.75)
	c=c_orange;
if(argument2<0.5)
	c=c_yellow;
if(argument2<0.25)
	c=c_green;

draw_rectangle_color(argument0,argument1,argument0+80*argument2,argument1+16,c,c,c,c,0);
draw_rectangle_color(argument0,argument1,argument0+80,argument1+16,c_black,c_black,c_black,c_black,1);