function Draw_Shop_Window() {
	//Window Anchors and Offsets
	window_anchor = "Top_Left";//Anchor point for dialogue window in case view size changes

	//============================
	//Post Modifyable Calculations
	//============================

	//Actual Draw locations based on above information.
	var _shop_window_x = Get_Anchor_X(window_anchor) + shop_window_x;//8;
	var _shop_window_y = Get_Anchor_Y(window_anchor) + shop_window_y - floor(shop_window_pan);

	var _gold_window_x = Get_Anchor_X(window_anchor) + gold_window_x + floor(gold_window_pan);
	var _gold_window_y = Get_Anchor_Y(window_anchor) + gold_window_y;

	var gold_text_x = _gold_window_x + 8;
	var gold_text_y = _gold_window_y + 8;

	var gold_ammount_x = gold_text_x + 56;
	var gold_ammount_y = gold_text_y + 8;

	var arrow_up_x = _shop_window_x + 10;
	var arrow_up_y = _shop_window_y + 8;

	var arrow_down_x = _shop_window_x + sprite_get_width(spr_Shop_Window) - sprite_get_width(spr_Menu_Arrow_Down) - 10;
	var arrow_down_y = _shop_window_y + sprite_get_height(spr_Shop_Window) - sprite_get_height(spr_Menu_Arrow_Down) - 10;

	var item_surface_x = _shop_window_x;
	var item_surface_y = _shop_window_y + 10;

	var item_icon_x = 24;
	var item_icon_y = 8;

	var price_tag_x = item_icon_x + 9;
	var price_tag_y = item_icon_y - 8;

	var price_tag_text_x = price_tag_x + 13;
	var price_tag_text_y = price_tag_y + 31;

	var item_selector_x = 20+ item_surface_x;
	var item_selector_y = item_surface_y;

	var _item_window_x = Get_Anchor_X(window_anchor) + item_window_x - floor(item_window_pan);
	var _item_window_y = Get_Anchor_Y(window_anchor) + item_window_y;

	var item_name_x = _item_window_x + 8;
	var item_name_y = _item_window_y + 8;

	var item_price_x = item_name_x + 64 +8;
	var item_price_y = item_name_y + 16;

	//var index_offset = 32;


	draw_set_color(c_white);
	draw_sprite(spr_Shop_Window,0,_shop_window_x,_shop_window_y);
	draw_sprite(spr_Item_Name_Window,0,_item_window_x+(item_index*index_offset),_item_window_y);
	draw_sprite(spr_Shop_Cursor,cursor_flash,item_selector_x+(item_index*index_offset),item_selector_y);
	//draw_sprite(spr_Shop_Cursor,cursor_flash,view_xview,view_yview);

	if(page_number > 0){//if there is a previous page
	    draw_sprite(spr_Menu_Arrow_Up,arrow_flash,arrow_up_x,arrow_up_y);//display up arrow
	}
	if(page_number < (number_of_pages -1)){//if there is a next page
	    draw_sprite(spr_Menu_Arrow_Down,arrow_flash,arrow_down_x,arrow_down_y);//display down arrow
	}


	var i;
	i = 0;
	draw_set_font(global.Price_Tag_Font);
	draw_set_halign(fa_right);
	var _surf = surface_create(sprite_get_width(spr_Shop_Window),sprite_get_height(spr_Price_Tag));
	surface_set_target(_surf);
	draw_clear_alpha(c_white,0);
	for(i=0; i<min(items_per_page,number_of_items - (page_number*items_per_page)); i+=1){
	    draw_sprite(Get_Item_Stats(item_array[(page_number*items_per_page)+i],"Item_Icon"),Get_Item_Stats(item_array[(page_number*items_per_page)+i],"Frame_Number"),item_icon_x+(i*index_offset),item_icon_y);
	    draw_sprite(spr_Price_Tag,0,price_tag_x+(i*index_offset),price_tag_y);
	    draw_text_transformed(price_tag_text_x+(i*index_offset),price_tag_text_y,string(floor(Get_Item_Stats(item_array[(page_number*items_per_page)+i],"Value")*sell_value_modifier)),1,1,270);
	}
	surface_reset_target();
	if(scrolling_page_direction = "down"){
	    draw_surface_part(_surf,0,0,surface_get_width(_surf),surface_get_height(_surf)-item_scroll_timer,item_surface_x,item_surface_y+item_scroll_timer);
	}
	else{
	    draw_surface_part(_surf,0,item_scroll_timer,surface_get_width(_surf),surface_get_height(_surf)-item_scroll_timer,item_surface_x,item_surface_y);
	}
	surface_free(_surf);




	draw_set_font(fnt_MenuFont);
	draw_set_halign(fa_left);
	draw_text(item_name_x+(item_index*index_offset),item_name_y,Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Menu_Name"));
	draw_set_halign(fa_right);
	draw_text(item_price_x+(item_index*index_offset),item_price_y,string(floor(Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Value")*sell_value_modifier)));


	draw_sprite(spr_Shop_Gold_Window,0,_gold_window_x,_gold_window_y);
	draw_set_font(fnt_MenuFont);
	draw_set_halign(fa_left);
	draw_text(gold_text_x,gold_text_y,Get_Menu_Display_Message("Generic","Gold"));
	draw_set_halign(fa_right);
	draw_text(gold_ammount_x,gold_ammount_y,string(global.Gold));
	draw_set_halign(fa_left);
	draw_set_color(c_white); //reset draw color



}
