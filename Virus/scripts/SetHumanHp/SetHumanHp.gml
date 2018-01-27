global.HP=global.MaxHP;
global.Detection=0;

for(var i=0;i<global.OrganAmount;++i)
{
	with(global.Organs[i]){
		global.HP-=2*max(0,VirusAmount/Durability-0.5)*(Importance+2*global.VirusPower);	
		global.Detection+=VirusAmount/Durability*(Detection-2*global.VirusStealth);
	}
}
if(global.HP<0)
{global.HP=0;}

if(global.Detection>global.CriticalDetection)
{global.Detection=global.CriticalDetection;}