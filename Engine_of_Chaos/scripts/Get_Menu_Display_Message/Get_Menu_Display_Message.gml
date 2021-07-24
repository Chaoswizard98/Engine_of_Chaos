function Get_Menu_Display_Message() {
	var _menu = argument[0];
	var _message_ID = argument[1];


	switch(global.Language){
	    case "English": return Menu_Message_English(_menu,_message_ID); break;
	    default: return Menu_Message_English(_menu,_message_ID); break;
	}



}
