function Decrease_Sound_Volume(){
	//Decreases the sfx volume by 1 tick
	global.Sound_Volume -= .01; 
	if(global.Sound_Volume < 0){
	    global.Sound_Volume = 0;
	}
}