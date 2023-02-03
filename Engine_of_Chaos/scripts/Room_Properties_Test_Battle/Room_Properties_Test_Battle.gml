//==================
//Room Creation Code
//==================
function Room_Creation_Test_Battle(){
	Start_Battle("Test_Battle",room_Title_Screen,true,"Default",1);
	Play_Music(bgm_Random_Battle,"Fade_To_Next",250,0);
}

//=============
//Room Transfer
//=============
function Room_Stats_Test_Battle(_stat, _direction){
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