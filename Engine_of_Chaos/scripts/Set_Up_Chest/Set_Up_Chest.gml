function Set_Up_Chest() {
	//Put this in the chest's instance create code to assign it proper ID
	chest_ID = argument[0];
	respawnable = argument[1];

	if(respawnable){
	    looted = false;
	    image_index = 0;//closed sprite
	}
	else{
	    if(chest_ID = -1){//-1 means it's opened, no need to store data as this is for decoration
	        looted = true;
	        can_interact_in_battle = false;
	        image_index = 1;//open sprite
	    }
	    else if(!global.Chest_Looted[chest_ID]){//did we already loot it?
	        looted = false;
	        image_index = 0;//closed sprite
	    }
	    else{//chest has been looted
	        looted = true;
	        can_interact_in_battle = false;
	        image_index = 1;//open sprite
	    }
	}



}
