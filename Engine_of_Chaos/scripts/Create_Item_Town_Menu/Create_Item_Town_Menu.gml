function Create_Item_Town_Menu(_object,_character,_npc) {
	var _new_menu = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cross_Menu);

	with(_new_menu){
	    current_object = _object;
	    current_character = _character;
	    current_npc = _npc;
    
	    pan_y = max_y_pan;
	    pan_direction = "up";
	    number_of_menus = 4;//Number of menu options
	    play_pan_sound = true;
    
	    menu_sprite[0] = spr_Use_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Menu_Display_Message("Generic","USE");//slot 0 name
	    menu_event[0] = "Display_Member_List_Item_Use";//event for clicking slot 0
	    menu_animated[0] = -1;
    
	    menu_sprite[1] = spr_Give_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Menu_Display_Message("Generic","GIVE");//slot 1 name
	    menu_event[1] = "Display_Member_List_Item_Give";//event for clicking slot 1
	    menu_animated[1] = 0;
    
	    menu_sprite[2] = spr_Equip_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Menu_Display_Message("Generic","EQUIP");//slot 2 name
	    menu_event[2] = "Display_Member_List_Item_Equip";//event for clicking slot 2
	    menu_animated[2] = 0;
    
	    menu_sprite[3] = spr_Drop_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Menu_Display_Message("Generic","DROP");//slot 3 name
	    menu_event[3] = "Display_Member_List_Item_Drop";//event for clicking slot 3
	    menu_animated[3] = 0;
	}



}
