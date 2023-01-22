//==================
//Room Creation Code
//==================
function Room_Creation_Hillford_Item_Shop_Second_Floor(){
	var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers("Chapter_1");
	Play_Music(bgm_Harvest_Season,"Fade_To_Next",250,0);
}