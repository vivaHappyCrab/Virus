if(!global.Clicked && !Plagued){
	global.Clicked=true;
	
	var first=-1;
	
	for(var i=0;i<global.OrganAmount;++i)
		if(global.Organs[i].id=global.Selected)
			first=i;
	
	if(first!=-1){
		var second=-1;
		for(var i=0;i<global.OrganAmount;++i)
		if(global.Organs[i].id=id)
			second=i;
			
			if(second!=-1)
			if(ds_grid_get(global.Ways,first,second)==1){
				global.Organs[first].VirusAmount/=2;
				Plagued=true;
				VirusAmount=
					global.VirusSpeed*(global.Organs[first].VirusAmount-0.1*Durability)/10
					+global.VirusStamina-Regeneration;
			}
	}
}