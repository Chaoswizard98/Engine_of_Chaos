function Item_Display_Names_English() {
	var _item = argument[0];//Item
	var _stat = argument[1];//Return stat

	var _item_name = "none";//Dont touch these
	var _menu_name = "none";//'none' is ignored by the game, used to test for empty slot

	//Items
	switch(_item){
	    //========
	    //Utility=
	    //========
	    case "Remove":
	        _menu_name = "Remove";
	    break;
    
	    //======
	    //Items=
	    //======
	    case "Battered_Sword":
	        _item_name = "Battered Sword";
	        _menu_name = "Battered# Sword";
	    break;
	    case "Battered_Arrow":
	        _item_name = "Battered Arrow";
	        _menu_name = "Battered# Arrow";
	    break;
	    case "Wooden_Staff":
	        _item_name = "Wooden Staff";
	        _menu_name = "Wooden# Staff";
	    break;
	    case "Battered_Knife":
	        _item_name = "Battered Knife";
	        _menu_name = "Battered# Knife";
	    break;
	    case "Wooden_Spear":
	        _item_name = "Wooden Spear";
	        _menu_name = "Wooden# Spear";
	    break;
	    case "Beer":
	        _item_name = "Beer";
	        _menu_name = "Beer";
	    break;
	    case "Ring_Of_Chicken":
	        _item_name = "Ring of Chicken";
	        _menu_name = "Ring of#Chicken";
	    break;
	    case "Water_Ring":
	        _item_name = "Water Ring";
	        _menu_name = "Water# Ring";
	    break;
	    case "Paper":
	        _item_name = "Paper";
	        _menu_name = "Paper";
	    break;
	    case "Medical_Herb":
	        _item_name = "Medical Herb";
	        _menu_name = "Medical# Herb";
	    break;
	    case "Healing_Seed":
	        _item_name = "Healing Seed";
	        _menu_name = "Healing# Seed";
	    break;
	    case "Healing_Drop":
	        _item_name = "Healing Drop";
	        _menu_name = "Healing# Drop";
	    break;
	    case "Healing_Water":
	        _item_name = "Healing Water";
	        _menu_name = "Healing# Water";
	    break;
	    case "Healing_Rain":
	        _item_name = "Healing Rain";
	        _menu_name = "Healing# Rain";
	    break;
	    case "Fairy_Powder":
	        _item_name = "Fairy Powder";
	        _menu_name = "Fairy# Powder";
	    break;
	    case "Fairy_Tear":
	        _item_name = "Fairy Tear";
	        _menu_name = "Fairy# Tear";
	    break;
	    case "Light_Of_Hope":
	        _item_name = "Light Of Hope";
	        _menu_name = "Light#Of Hope";
	    break;
	    case "Antidote":
	        _item_name = "Antidote";
	        _menu_name = "Antidote";
	    break;
	    case "Angel_Wing":
	        _item_name = "Angel Wing";
	        _menu_name = "Angel# Wing";
	    break;
	    case "Brave_Apple":
	        _item_name = "Brave Apple";
	        _menu_name = "Brave# Apple";
	    break;
	    case "Forbidden_Box":
	        _item_name = "Forbidden Box";
	        _menu_name = "Forbidden# Box";
	    break;
	    case "Shining_Ball":
	        _item_name = "Shining Ball";
	        _menu_name = "Shining# Ball";
	    break;
	    case "Blizzard":
	        _item_name = "Blizzard";
	        _menu_name = "Blizzard";
	    break;
    
	    case "Power_Water":
	        _item_name = "Power Water";
	        _menu_name = "Power# Water";
	    break;
	    case "Protect_Milk":
	        _item_name = "Protect Milk";
	        _menu_name = "Protect# Milk";
	    break;
	    case "Quick_Chicken":
	        _item_name = "Quick Chicken";
	        _menu_name = "Quick# Chicken";
	    break;
	    case "Bright_Honey":
	        _item_name = "Bright Honey";
	        _menu_name = "Bright# Honey";
	    break;
	    case "Cheerful_Bread":
	        _item_name = "Cheerful Bread";
	        _menu_name = "Cheerful# Bread";
	    break;
	    case "Running_Pimento":
	        _item_name = "Running Pimento";
	        _menu_name = "Running# Pimento";
	    break;
	    case "Jogurt_Ring":
	        _item_name = "Jogurt Ring";
	        _menu_name = "Jogurt# Ring";
	    break;
	}

	//Return Message
	switch(_stat){
	    case "Item_Name": return _item_name; break;
	    case "Menu_Name": return _menu_name; break;
	    default: return "none"; break;
	}





}
