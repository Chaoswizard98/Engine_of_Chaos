//==================
//Room Creation Code
//==================
function Room_Creation_Ashenwood(){
	var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers("Chapter_1");
	Play_Music(bgm_Town,"Fade_To_Next",250,0);
}

//=============
//Room Transfer
//=============
function Room_Stats_Ashenwood(_stat, _direction){
	var _cutscene = "none";
	var _room = noone;
	var _transition = "Screen_Fade";
	var _tile = "Egress";
	
	if(_direction = "Right"){
		_room = room_Battle_01;
		_tile = "Ashenwood";
		switch(global.Story_State){
			case 2: _cutscene = "Missing_Ciera_Cutscene"; break;
			case 3: _cutscene = "Missing_Max_Cutscene"; break;
		}
	}
	
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