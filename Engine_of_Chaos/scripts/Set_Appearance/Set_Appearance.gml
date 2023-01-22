function Set_Appearance(_character){
	var g = 1;
	_character.sprite_index = Get_Appearance("Local",_character,"Overworld");//Set overworld sprite
	_character.portrait_ID = Get_Appearance("Local",_character,"Portrait");//Set portrait
	_character.voice_ID = Get_Appearance("Local",_character,"Voice");//Set Voice
}