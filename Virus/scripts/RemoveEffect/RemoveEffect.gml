	if(global.stepCount==global.RemoveAdditionalRegen){
		for(var i=0;i<global.OrganAmount;++i)
			global.Organs[i].Regeneration--;
		global.RemoveAdditionalRegen=0;
		global.Event="";
	}
		
	if(global.stepCount==global.RemoveLiverDebuff){
			for(var i=0;i<global.OrganAmount;++i)
			if(global.Organs[i].Name=="Liver")
			{
				global.Organs[i].Regeneration+=2;
				global.Organs[i].Durability+=10;
			}
		global.RemoveLiverDebuff=0;
		global.Event="";
	}