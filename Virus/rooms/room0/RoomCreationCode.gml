window_set_fullscreen(true);


global.MaxHP=200;
global.Detection=0;
global.CriticalDetection=200;
global.InfoText="";
global.Upgrades=1;
global.VirusPower=0;
global.VirusSpeed=1;
global.VirusStamina=5;
global.VirusStealth=0;
global.stepCount=0;
global.Clicked=false;
global.Selected=0;
global.Event="";
global.Event_description="";
global.RemoveSmoke=-1;
global.RemoveAdditionalRegen=-1;
global.RemoveLiverDebuff=-1;
global.RemoveIndianDebuff=-1;

global.OrganAmount=instance_number(Organ);
randomize();

for(var i=0;i<global.OrganAmount;++i)
{
	global.Organs[i]=instance_find(Organ,i);
	global.DisplayOrgan[i]=false;
}

	var n=irandom(global.OrganAmount-1);
	global.Organs[n].Plagued=true;
	global.Organs[n].VirusAmount=0.1*global.Organs[n].Durability;
	global.VirusStamina=global.Organs[n].Regeneration;
	global.VirusStealth=irandom(9-global.VirusStamina);
	global.VirusPower=9-global.VirusStamina-global.VirusStealth;
	
	for(var i=0;i<3*global.OrganAmount;++i)
	{
		var first=irandom(global.OrganAmount-1);
		var second=irandom(global.OrganAmount-1);
		var tmp=global.Organs[first];
		global.Organs[first]=global.Organs[second];
		global.Organs[second]=tmp;
	}
	
	global.Ways=ds_grid_create(global.OrganAmount,global.OrganAmount);
	ds_grid_add_region(global.Ways,0,0,global.OrganAmount,global.OrganAmount,0);
	
	for(var i=0;i<global.OrganAmount;++i){
			var r=0;
			for(var j=0;j<global.OrganAmount;++j)
				if(ds_grid_get(global.Ways,i,j)==1)
					r++;

		for(var j=r;j<irandom_range(2,4);j++){
			var n=irandom(global.OrganAmount-1);
			if(n!=i && ds_grid_get(global.Ways,i,n)!=1){
			ds_grid_set(global.Ways,i,n,1);
			ds_grid_set(global.Ways,n,i,1);
			}
			else{j--;}
		}
	}
		//for(var i=0;i<global.OrganAmount;++i){
		//	for(var j=0;j<global.OrganAmount;++j)
		//		global.InfoText+=(string(ds_grid_get(global.Ways,i,j))+" ");
		//	global.InfoText+="\n";
		//}
		//global.InfoText=string(ds_grid_get_sum(global.Ways,0,0,global.OrganAmount,global.OrganAmount));
		
	global.BtnAmount=instance_number(Ability);

	for(var i=0;i<global.BtnAmount;++i)
	{
		global.Abilities[i]=instance_find(Ability,i);
	}

draw_set_font(font_standart);



		