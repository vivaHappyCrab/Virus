var a=draw_get_alpha();
var c=draw_get_color();

draw_set_alpha(1);
draw_set_color(c_blue);
draw_text(1640,108,"Speed: "+string(global.VirusSpeed));

draw_set_color(c_green);
draw_text(1640,172,"Sustainability: "+string(global.VirusStamina));

draw_set_color(c_yellow);
draw_text(1640,236,"Stealth: "+string(global.VirusStealth));

draw_set_color(c_red);
draw_text(1640,300,"Lethal power: "+string(global.VirusPower));

draw_set_alpha(a);
draw_set_color(c);