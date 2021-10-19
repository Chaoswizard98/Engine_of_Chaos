function Item_Display_Names_English(_item,_stat,_default){
	var _item_name = _default;
	var _menu_name = _default;

	//Items
	switch(_item){
	    //========
	    //Utility=
	    //========
	    case "Remove": _item_name = "Remove"; _menu_name = "Remove"; break;
    
	    //======
	    //Items=
	    //======
		case "ITEM": _item_name = "NAME"; _menu_name = "MENU_NAME"; break;
	}

	//Return Message
	switch(_stat){
	    case "Item_Name": return _item_name; break;
	    case "Menu_Name": return _menu_name; break;
	    default: return "Unknown"; break;
	}
}