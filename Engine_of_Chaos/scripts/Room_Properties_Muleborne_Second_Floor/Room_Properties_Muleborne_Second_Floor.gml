//==================
//Room Creation Code
//==================
function Room_Creation_Muleborne_Second_Floor(){
	var _player = Spawn_Player("Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers();
	Play_Music(bgm_Town,"Fade_To_Next",250,0);
}