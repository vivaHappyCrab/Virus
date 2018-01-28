var n=irandom_range(1,3);

switch(n)
{
	case 1:{
		for(var i=0;i<global.OrganAmount;++i)
			global.Organs[i].Regeneration++;
		global.RemoveAdditionalRegen=global.stepCount+300;
		global.Event="Vitamin coctail";
		
		global.Event_description="Incrised regeneration of all organs";
		break;
	}
	case 2:{
		for(var i=0;i<global.OrganAmount;++i)
			if(global.Organs[i].Name=="Liver")
			{
				global.Organs[i].Regeneration-=2;
				global.Organs[i].Durability-=10;
			}
		global.RemoveLiverDebuff=global.stepCount+300;
		global.Event="In vino veritas";
		global.Event_description="alcoholism is a problem, but not for you: \nDecrised regeneration and dueability of Liver";
		break;
	}
	case 3:{
		for(var i=0;i<global.OrganAmount;++i)
			if(global.Organs[i].Name=="Liver")
				{
					global.Organs[i].Regeneration+=2;
				}	
			if(global.Organs[i].Name=="Intestine")
				{
					global.Organs[i].Regeneration+=2;
				}	
			if(global.Organs[i].Name=="Stomach")
				{
					global.Organs[i].Regeneration+=2;
				}
			global.RemoveIndianDebuff=global.stepCount+300;
			global.Event="Indian food";
			global.Event_description="mmm, spicy \nIncrised regeneration of Liver, Stomach and Intestine"
}