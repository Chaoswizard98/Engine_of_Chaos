function Get_Cutscene_Message() {
	var _menu = argument[0];//Menu we're calling from
	var _message_ID = argument[1];//Message to look up
	var _data1 = "";
	var _data2 = "";
	var _data3 = "";
	var _data4 = "";
	var _data5 = "";

	if(argument_count > 2){
	    _data1 = argument[2];
	}
	if(argument_count > 3){
	    _data2 = argument[3];
	}
	if(argument_count > 4){
	    _data3 = argument[4];
	}
	if(argument_count > 5){
	    _data4 = argument[5];
	}
	if(argument_count > 6){
	    _data5 = argument[6];
	}

	switch(global.Language){
	    case "English": return Cutscene_Message_English(_menu,_message_ID,_data1,_data2,_data3,_data4,_data5); break;
	    default: return Cutscene_Message_English(_menu,_message_ID,_data1,_data2,_data3,_data4,_data5); break;
	}



}
