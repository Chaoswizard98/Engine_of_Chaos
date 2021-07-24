function Increase_Sound_Volume() {
	//Increases the sfx volume by 1 tick
	global.Sound_Volume += .01; 
	if(global.Sound_Volume > 1){
	    global.Sound_Volume = 1;
	}



}
