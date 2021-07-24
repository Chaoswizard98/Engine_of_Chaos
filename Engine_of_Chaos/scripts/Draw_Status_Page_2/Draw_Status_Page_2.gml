function Draw_Status_Page_2() {
	var _page_window_x = Get_Anchor_X("Top_Left") + status_page_x + page_window_pan;
	var _page_window_y = Get_Anchor_Y("Top_Left") + status_page_y;

	var _title_field_x = _page_window_x + 18;//
	var _title_field_y = _page_window_y + 12;//

	draw_sprite(spr_Status_Page_Window,0,_page_window_x,_page_window_y);
	draw_set_color(c_white); //reset draw color

	draw_text(_title_field_x,_title_field_y,string_hash_to_newline("Page 3"));//CLASS, NAME



}
