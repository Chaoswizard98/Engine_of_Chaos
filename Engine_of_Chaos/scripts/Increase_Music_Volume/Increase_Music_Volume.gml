function Increase_Music_Volume() {
	//Increases the bgm volume by 1 tick
	global.Music_Volume += .01; 
	if(global.Music_Volume > 1){
	    global.Music_Volume = 1;
	}

	Update_Music_Volume();



}
