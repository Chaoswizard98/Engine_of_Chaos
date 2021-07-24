function Decrease_Music_Volume() {
	//Decreases the bgm volume by 1 tick
	global.Music_Volume -= .01; 
	if(global.Music_Volume < 0){
	    global.Music_Volume = 0;
	}

	Update_Music_Volume();



}
