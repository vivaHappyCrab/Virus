global.stepCount++;
SetHumanHp();
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

if(global.stepCount%200==0)
	global.Upgrades++;

