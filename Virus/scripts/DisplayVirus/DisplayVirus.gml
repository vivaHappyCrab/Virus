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

for(var i=0;i<global.OrganAmount;++i)
	if(global.DisplayOrgan[i])
	with(global.Organs[i])
		DrawLBar(x+sprite_width/3,y+sprite_height/3,VirusAmount/Durability);

draw_set_color(c_blue);
draw_text(global.Abilities[0].x+16,global.Abilities[0].y-32,"Drunken masta");

draw_set_color(c_blue);
draw_text(global.Abilities[1].x+8,global.Abilities[1].y-32,"Progress machine");

draw_set_alpha(a);
draw_set_color(c);