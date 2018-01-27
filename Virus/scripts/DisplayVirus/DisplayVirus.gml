var a=draw_get_alpha();
var c=draw_get_color();

draw_set_alpha(1);
draw_set_color(c_blue);
draw_text(80,96,"Speed: "+string(global.VirusSpeed));

draw_set_color(c_green);
draw_text(80,160,"Sustainability: "+string(global.VirusStamina));

draw_set_color(c_yellow);
draw_text(80,224,"Stealth: "+string(global.VirusStealth));

draw_set_color(c_red);
draw_text(80,288,"Lethal power: "+string(global.VirusPower));

draw_set_alpha(a);
draw_set_color(c);