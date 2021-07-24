function Shop_Configuration() {
	if((global.Buy_All_Items) && (shop_ID != "Sell") && (shop_ID != "Repair")){//if the 'buy all items' cheat is active
	    Debug_Shop();//Enable debug shop (Contains all items in the game)
	}
	else{
	    switch(shop_ID){
	        case "Sell": Sell_Shop(); break;//Sell shop (null case for selling items)
	        case "Repair": Repair_Shop(); break;
	        case "Deals": Deals_Shop(); break;//deals shop
	        case "Custom_Quantity_Shop": Deals_Shop(); break;//deals shop
	        case "Ashenwood_Weapon_Shop": Ashenwood_Weapon_Shop(); break;
	        case "Ashenwood_Item_Shop": Ashenwood_Item_Shop(); break;
	        case "Ashenwood_Inn_Shop": Ashenwood_Inn_Shop(); break;
	        default: Debug_Shop(); break;//default to debug shop (Contains all items in the game)
	    }
	}

	number_of_pages = ceil(number_of_items / items_per_page);



}
