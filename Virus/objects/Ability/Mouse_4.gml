if(Charges>0)
	for(var i=0;i<global.BtnAmount;++i)
		if(global.Abilities[i].id==id)
		{
			CastAbility(i);
			Charges--;
		}
