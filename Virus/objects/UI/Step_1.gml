global.stepCount++;
global.Clicked=false;

if !audio_is_playing(global.Sound_on) {
	music_random = irandom(3);
	if music_random == 1 {
		global.Sound_on = audio_play_sound(Music, 1,false);
	}
	if music_random == 2 {
		global.Sound_on = audio_play_sound(Music2, 1, false);
	}
	if music_random == 3 {
		global.Sound_on = audio_play_sound(Music3, 1, false);
	}
}	
RemoveEffect();

if(global.Detection>=global.CriticalDetection)
{
	global.Event="YOU LOSE!!!";
	global.Event_description="Try one more time!!";
	global.End=true;
}
if(global.HP<=0){
	global.Event="YOU WON!!!";
	global.Event_description="Congratz! Hope you enjoy killing human...";
	global.End=true;
}

if(global.stepCount%300==0 && !global.End){
	global.Upgrades++;
	if(irandom(1)==0){
		GenerateEffect();
	}
SetHumanHp();
}




	

