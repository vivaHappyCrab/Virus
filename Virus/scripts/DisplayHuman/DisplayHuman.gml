draw_rectangle_color(1640,416,1640+160*(global.HP/global.MaxHP),448,c_red,c_green,c_green,c_red,0);

draw_rectangle_color(1640,512,1640+160*(global.Detection/global.CriticalDetection),544,c_yellow,c_blue,c_blue,c_yellow,0);

var a=draw_get_alpha();
var c=draw_get_color();

draw_set_alpha(1);
draw_set_color(c_red);
draw_text(1704,384,"HP");

draw_set_color(c_yellow);
draw_text(1656,480,"Detection");

for(var i=0;i<global.OrganAmount;++i)
	if(global.Organs[i].id==global.Selected){
		with(global.Organs[i]){
			if(Plagued)
				draw_set_color(c_red);
			else
				draw_set_color(c_yellow);
			draw_text(1656,608,Name);
			DrawBar(1640,640,(VirusAmount/Durability));
		}
		
		var k=0;
		for(var j=0;j<global.OrganAmount;++j)
		if(ds_grid_get(global.Ways,i,j)==1 && !global.Organs[j].Plagued){
			with(global.Organs[j]){
				var y_scale=64/sprite_get_height(sprite_index);
				draw_sprite_ext(sprite_index,-1,1640,704+64*k,y_scale*image_xscale/image_yscale,y_scale,image_angle,c_white,1);	
			}
			k++;
		}
	}
	draw_set_font(Big);
	draw_text_color(750,64,"Active effect: "+global.Event,c_red,c_maroon,c_red,c_maroon,1);
	draw_set_font(font_standart);
	
	draw_set_font(Big);
	draw_text_color(750,104,"Description: "+global.Event_description,c_red,c_maroon,c_red,c_maroon,1);
	draw_set_font(font_standart);
	
	
	
draw_set_alpha(a);
draw_set_color(c);