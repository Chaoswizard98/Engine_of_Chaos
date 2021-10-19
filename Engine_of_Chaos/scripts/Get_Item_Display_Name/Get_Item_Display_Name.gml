function Get_Item_Display_Name(_item,_stat,_default = "Unknown"){
	switch(global.Language){
	    case "English": return Item_Display_Names_English(_item,_stat,_default); break;
	    default: return Item_Display_Names_English(_item,_stat,_default); break;
	}
}