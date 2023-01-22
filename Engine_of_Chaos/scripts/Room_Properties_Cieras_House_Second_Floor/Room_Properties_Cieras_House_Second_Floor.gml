//==================
//Room Creation Code
//==================
function Room_Creation_Cieras_House_Second_Floor(){
	var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers("Chapter_1");
	Play_Music(bgm_Town,"Fade_To_Next",250,0);
}