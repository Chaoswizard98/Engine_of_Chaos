function Draw_Land_Effect_Window() {
	var _character = argument[0];


	var _window_x = (Get_Anchor_X("Top_Left") + window_x + floor(window_pan));
	var _window_y = (Get_Anchor_Y("Top_Left") + window_y);

	var _title_text_x = _window_x + 8;
	var _title_text_y = _window_y + 8;

	var _land_effect_text_x = _window_x + (window_width) - 8;
	var _land_effect_text_y = _title_text_y + 16;

	var _title_text = Get_Menu_Display_Message("Generic","LAND_EFFECT");
	var _land_effect_text = (string(floor(Get_Land_Effect(Get_Terrain_Type(round(_character.x),round(_character.y)),Get_Character_Movement_Type("Local",_character,"Total"))*100))+"%");

	draw_set_color(c_white); //Default to white draw color for sprites

	draw_sprite(spr_Battle_HUD_Start,0,_window_x,_window_y);//draw window start
	draw_sprite(spr_Battle_HUD_End,0,_window_x+sprite_get_width(spr_Battle_HUD_Start),_window_y);//draw window end

	draw_set_font(menu_font); //Font
	draw_set_color(font_color);//font color
	draw_set_halign(fa_left); //Alignment

	draw_text(_title_text_x,_title_text_y,string_hash_to_newline(_title_text));//draw title text

	draw_set_halign(fa_right); //Alignment
	draw_text(_land_effect_text_x,_land_effect_text_y,string_hash_to_newline(_land_effect_text));//draw LE text

	draw_set_halign(fa_left); //reset Alignment
	draw_set_color(c_white); //reset draw color



}
