function Draw_Sidebar_Window() {
	//===============
	//Draw Locations=
	//===============
	//=Sidebar Window=
	var _sidebar_window_x = Get_Anchor_X("Top_Left") + sidebar_window_x - floor(sidebar_window_pan);
	var _sidebar_window_y = Get_Anchor_Y("Top_Left") + sidebar_window_y;

	var _kills_title_x = _sidebar_window_x + 8;//KILlS
	var _kills_title_y = _sidebar_window_y + 78;//KILLS

	var _kills_x = _sidebar_window_x + 56;//number of kills
	var _kills_y = _sidebar_window_y + 86;//number of kills

	var _defeats_title_x = _sidebar_window_x + 8;//DEFEATS
	var _defeats_title_y = _sidebar_window_y + 94;//DEFEATS

	var _defeats_x = _sidebar_window_x + 56;//number of deaths
	var _defeats_y = _sidebar_window_y + 102;//number of deaths

	//=Gold Window=
	var _gold_window_x = Get_Anchor_X("Top_Left") + gold_window_x - floor(gold_window_pan_x);
	var _gold_window_y = Get_Anchor_Y("Top_Left") + gold_window_y + floor(gold_window_pan_y);

	var _gold_title_x = _gold_window_x + 8;//GOLD
	var _gold_title_y = _gold_window_y + 10;//GOLD

	var _gold_x = _gold_window_x + 56;//Ammount
	var _gold_y = _gold_window_y + 18;//Ammount


	//==========
	//Draw Code=
	//==========
	//=Sidebar=
	draw_sprite(spr_Status_Sidebar_Window,0,_sidebar_window_x,_sidebar_window_y);

	draw_set_halign(fa_left);//kills
	draw_text(_kills_title_x,_kills_title_y,Get_Menu_Display_Message("Generic","KILLS"));//KILLS
	draw_set_halign(fa_right);
	draw_text(_kills_x,_kills_y,Get_Character_Kills(lookup_type,characterID,"Total"));//number of kills

	draw_set_halign(fa_left);//defeats
	draw_text(_defeats_title_x,_defeats_title_y,Get_Menu_Display_Message("Generic","DEATHS"));//DEFEATS
	draw_set_halign(fa_right);
	draw_text(_defeats_x,_defeats_y,Get_Character_Deaths(lookup_type,characterID,"Total"));//number of deaths

	draw_set_halign(fa_left);


	//=Gold Window=
	draw_sprite(spr_Gold_Window,0,_gold_window_x,_gold_window_y);//Background window

	draw_set_color(font_color);
	draw_set_halign(fa_left);
	draw_text(_gold_title_x,_gold_title_y,Get_Menu_Display_Message("Generic","GOLD"));//GOLD
	draw_set_halign(fa_right);
	draw_text(_gold_x,_gold_y,string(global.Gold));//Ammount
	draw_set_halign(fa_left);
	draw_set_color(c_white); //reset draw color
}