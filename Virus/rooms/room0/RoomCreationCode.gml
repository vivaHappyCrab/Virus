window_set_fullscreen(true);


global.MaxHP=200;
global.Detection=0;
global.CriticalDetection=200;
global.InfoText="";
global.Upgrade=false;
global.VirusPower=0;
global.VirusSpeed=0;
global.VirusStamina=5;
global.VirusStealth=0;
global.stepCount=0;
global.Clicked=false;

global.OrganAmount=instance_number(Organ);
randomize();

for(var i=0;i<global.OrganAmount;++i)
{
	global.Organs[i]=instance_find(Organ,i);
	var bool = random(2);
	if(bool>1)
	{
		global.Organs[i].Plagued=false;
	}
}

draw_set_font(font_standart);
//for(var i=0;i<10;i++)
//{
//	var liver=instance_create_depth(50*i,50+70*i,0,Liver);
//}