function Give_Item_Drop(_attacker,_target,_item,_drop_chance){
	var _message = "";
	var _shop_ID = Get_Item_Stats(_item,"Shop_ID");

	if(Chance(_drop_chance)){
	    _message += Get_General_Messages("Battle_Cutscene","Item_Dropped",Get_Character_Name("Local",_target,"Total"),Get_Item_Stats(_item,"Item_Name"));//x dropped the y
	    if(!Inventory_Is_Full("Local",_attacker)){//if their inventory is not full
	        _message += Get_General_Messages("Battle_Cutscene","Item_Recieved",Get_Character_Name("Local",_attacker,"Total"),Get_Item_Stats(_item,"Item_Name"));//x recieve the y
	        Give_Character_Item("Local",_attacker,_item);//give the character the dropped item
	    }
	    else{
	        _message += Get_General_Messages("Battle_Cutscene","Inventory_Full",Get_Character_Name("Local",_attacker,"Total"));// but x cannot hold it!
	        if(_shop_ID != -1){//if shop ID is not invalid, add to stock
	            Add_To_Shop_Stock(_item,_shop_ID);//item, shop id (-1 for none, 0 for deals)
	        }
	    }
	}

	return _message;
}