function Decrease_Dialogue_Speed(){
	//Increases the sfx volume by 1 tick
	global.Dialogue_Speed -= 1; 
	if(global.Dialogue_Speed < 1){
	    global.Dialogue_Speed = 1;
	}
}