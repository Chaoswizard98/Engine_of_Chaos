//==================
//Room Creation Code
//==================
function Room_Creation_Moorenfirch(){
	//Play_Music(noone,"Fade_To_Next",250,0);//Finished demo cutscene
	//Start_Cutscene("Finished_Demo_Cutscene");
	var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers("Chapter_1");
	Play_Music(bgm_Harvest_Season,"Fade_To_Next",250,0);
}

//=============
//Room Transfer
//=============
function Room_Stats_Moorenfirch(_stat, _direction){
	var _cutscene = "none";
	var _room = noone;
	var _transition = "Screen_Fade";
	var _tile = "Egress";

	//===========
	//Return Stat
	//===========
	switch(_stat){
		case "Cutscene": return _cutscene; break;
		case "Room": return _room; break;
		case "Transition": return _transition; break;
		case "Tile": return _tile; break;
	}
}