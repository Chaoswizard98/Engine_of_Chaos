function Use_Egress_Item_Battle() {
	var _player = player_trigger;

	switch(state){
	    case 0:
	        Create_Dialogue("none",Get_Voice("Retreat_From_Battle"),_player.name + " uses the " + Get_Inventory_Item_Stats("Local",_player,obj_Target_Selection_Controller.inventory_slot,"Item_Name")+"!",id,true,true);
	        state += 1;
	    break;
	    case 1:
	        Play_Sound(sfx_Spell_Cast);
	        Create_Screen_Flash(c_white,0,"in",20,.5,0,1,id);//color, start alpha, direction, iterations,speed,min,max
	        state += 1;
	    break;
	    case 2:
	        state += 1;
	        if(Item_Degrades("Local",_player,obj_Target_Selection_Controller.inventory_slot,"Use_Degrade_Chance")){
	            Damage_Item("Local",_player,obj_Target_Selection_Controller.inventory_slot);
	        }
	        with(obj_Character){
	            Save_Character_Stats(id);
	        }
	        Room_Transfer(global.Player_ID,"Force",global.Egress_Room,"Egress");
	        instance_destroy();
	    break;
	}



}
