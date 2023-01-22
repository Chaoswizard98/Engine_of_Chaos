function Get_Item_Display_Name(_item,_stat,_default = "Unknown"){
	//switch(global.Language){
	//    case "English": return Item_Display_Names_English(_item,_stat,_default); break;
	//    default: return Item_Display_Names_English(_item,_stat,_default); break;
	//}
	
	var _script = asset_get_index("Item_Display_Names_"+global.Default_Language);
	var _new_script = asset_get_index("Item_Display_Names_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_item,_stat,_default);//Run set script
}