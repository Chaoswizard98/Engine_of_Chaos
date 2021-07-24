function Get_Item_Display_Name() {
	var _item = argument[0];
	var _stat = argument[1];

	switch(global.Language){
	    case "English": return Item_Display_Names_English(_item,_stat); break;
	    default: return Item_Display_Names_English(_item,_stat); break;
	}



}
