var n=irandom_range(1,2);

switch(n)
{
	case 1:{
		for(var i=0;i<global.OrganAmount;++i)
			global.Organs[i].Regeneration++;
		global.RemoveAdditionalRegen=global.stepCount+300;
		global.Event="Vitamin coctail";
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
		break;
	}
}