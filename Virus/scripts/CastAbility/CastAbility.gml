switch(argument0){
	case 0:{
		for(var i=0;i<global.OrganAmount;++i)
			global.Organs[i].Importance-=10;
		break;
	}
	case 1:{
		for(var i=0;i<global.OrganAmount;++i)
			with(global.Organs[i])
				if(Plagued){
				VirusAmount*=1.2;
				if(VirusAmount>Durability)
					VirusAmount=Durability;
			}
		break;
	}
}