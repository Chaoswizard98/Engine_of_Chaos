function Create_Character_Dialogue(_lookup_type,_character,_message,_object,_arrow,_auto_pan_out){
	var _portrait = Get_Appearance(_lookup_type,_character,"Portrait");
	var _voice = Get_Appearance(_lookup_type,_character,"Voice");
	Create_Dialogue(_portrait,_voice,_message,_object,_arrow,_auto_pan_out);
}