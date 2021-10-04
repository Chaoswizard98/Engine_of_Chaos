function Shop_Configuration(){
	switch(shop_ID){
		case "Sell": Shop_Sell(); break;
		case "Repair": Shop_Repair(); break;
		case "Deals": Shop_Deals(); break;
		default: 
			if(global.Buy_All_Items){//if the 'buy all items' cheat is active
				Shop_Debug();//Enable debug shop (Contains all items in the game)
			}
			else{
				var _script = asset_get_index("Shop_Default");
				var _new_script = asset_get_index("Shop_" + shop_ID);
				if(_new_script != -1){//If the asset exists
					if(script_exists(_new_script)){//If the asset is a script
						_script = _new_script;
					}
				}
				script_execute(_script);//run the script
			}
		break;
	}
	number_of_pages = ceil(number_of_items / items_per_page);
}