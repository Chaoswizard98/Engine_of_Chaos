//==================
//Room Creation Code
//==================
function Room_Creation_Moorenfirch(){
	Play_Music(noone,"Fade_To_Next",250,0);
	Start_Cutscene("Finished_Demo_Cutscene");
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