draw_rectangle_color(64,416,64+160*(global.HP/global.MaxHP),448,c_red,c_green,c_green,c_red,0);

draw_rectangle_color(64,512,64+160*(global.Detection/global.CriticalDetection),544,c_yellow,c_blue,c_blue,c_yellow,0);

var a=draw_get_alpha();
var c=draw_get_color();

draw_set_alpha(1);
draw_set_color(c_red);
draw_text(128,384,"HP");

draw_set_color(c_yellow);
draw_text(80,480,"Detection");

draw_set_alpha(a);
draw_set_color(c);