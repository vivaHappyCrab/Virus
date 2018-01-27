draw_rectangle_color(64,416,64+1.6*(global.HP),448,c_red,c_green,c_green,c_red,0);

draw_rectangle_color(64,512,64+1.6*(global.HP),544,c_yellow,c_blue,c_blue,c_yellow,0);

var a=draw_get_alpha();
var c=draw_get_color();

draw_set_alpha(1);
draw_set_color(c_blue);