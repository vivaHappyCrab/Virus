if(global.stepCount%60==0 && Plagued && !global.End)
{
	VirusAmount+=global.VirusStamina-Regeneration;
	if(VirusAmount>Durability*0.2 && ChargeRegen>0)
	{
		RegenerationProgress+=1;
	}
	if(RegenerationProgress==10){
		RegenerationProgress=0;
		Regeneration++;
		ChargeRegen--;
	}
	if(VirusAmount<0)
	{
		Plagued=false;
		VirusAmount=0;
	}
	if(VirusAmount>=Durability){
		//give ability
		VirusAmount=Durability;
	}
}