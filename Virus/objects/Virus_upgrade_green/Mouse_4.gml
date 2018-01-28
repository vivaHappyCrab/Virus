if(global.Upgrades>0)
{
	if(global.VirusStamina<10)
	{
		global.VirusStamina+=1;
		global.Upgrades-=1;
	}
}