	if(global.stepCount==global.RemoveAdditionalRegen){
		for(var i=0;i<global.OrganAmount;++i)
			global.Organs[i].Regeneration--;
		global.RemoveAdditionalRegen=0;
		global.Event="";
		global.Event_description="";
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
		global.Event_description="";
		
	}
	
	if(global.stepCount==global.RemoveIndianDebuff){
			for(var i=0;i<global.OrganAmount;++i){
			if(global.Organs[i].Name=="Liver")
				{
					global.Organs[i].Regeneration-=2;
				}	
			if(global.Organs[i].Name=="Intestine")
				{
					global.Organs[i].Regeneration-=2;
				}	
			if(global.Organs[i].Name=="Stomach")
				{
					global.Organs[i].Regeneration-=2;
				}
			}	
		global.RemoveLiverDebuff=0;
		global.Event="";
		global.Event_description="";
	}
	
	if(global.stepCount==global.RemoveSmoke){
		for(var i=0;i<global.OrganAmount;++i){
			if(global.Organs[i].Name=="Lungs")
				{
					global.Organs[i].Regeneration+=1;
				}	
			if(global.Organs[i].Name=="Thyroid")
				{
					global.Organs[i].Regeneration+=1;
				}	
			}
		global.RemoveSmoke=0;
		global.Event="";
		global.Event_description="";
}	