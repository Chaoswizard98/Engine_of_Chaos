function Draw_Battle_HUD(_character){
	var _spacing = 8;//spacing per iteration
	var _max_bar_size = 100;//limit on HP bar size
	
	var _level = "";
	if(_character.display_level){
		_level = string(Get_Character_Level("Local",_character,"Derived"));
	}
	
	var _title_text = Get_Character_Name("Local",_character,"Total")+" "+ Get_Character_Class("Local",_character,"Abbreviation")+_level;

	var _current_health = Get_Character_Health("Local",_character,"Total");
	var _max_health = Get_Character_Max_Health("Local",_character,"Total");
	var _current_magic = Get_Character_Magic("Local",_character,"Total");
	var _max_magic = Get_Character_Max_Magic("Local",_character,"Total");

	var _number_display_length = 59;//7 digits * 8 pixel font + 3 (2 end bar, 1 space)
	var _health_bar_size = min(max(_max_health,_current_health),_max_bar_size)+_number_display_length;
	var _magic_bar_size = min(max(_max_magic,_current_magic),_max_bar_size)+_number_display_length;

	var _HUD_Size = max(string_length(_title_text),ceil(_health_bar_size / _spacing),ceil(_magic_bar_size / _spacing));
	var _HUD_Scale = max(_HUD_Size - 6,0);

	var _window_x;
	var _window_y;

	var _window_width;
	var _window_offset_x;
	var _window_offset_y;

	if(display_type = "Main_HUD" || display_type = "Target_Selection"){
	    _window_width = window_width;
	    _window_offset_x = window_offset_x;
	    _window_offset_y = window_offset_y;
	}
	else{
	    _window_width = (sprite_get_width(spr_Battle_HUD_Start)+sprite_get_width(spr_Battle_HUD_End)+(_HUD_Scale * _spacing));
	    _window_offset_x = 8;
	    _window_offset_y = 8;
	}



	//===========
	//X Position=
	//===========
	if((display_type = "Foreground_Left")||(display_type = "Background_Left")){//left position
	    _window_x = (Get_Anchor_X("Top_Left") + _window_offset_x);
	}
	else{//default to right position
	    _window_x = ((Get_Anchor_X("Top_Right") - _window_width) - _window_offset_x)+floor(window_pan);
	}
	//===========
	//Y Position=
	//===========
	if((display_type = "Target_Selection")||(display_type = "Background_Left")||(display_type = "Background_Right")){//bottom position
	    _window_y = (Get_Anchor_Y("Bottom_Right") - sprite_get_height(spr_Battle_HUD_Start)) - _window_offset_y;
	}
	else{//default to top position
	    _window_y = (Get_Anchor_Y("Top_Right") + _window_offset_y);
	}



	var _title_text_x = _window_x + 8;
	var _title_text_y = _window_y + 8;

	var _hp_text_x = _title_text_x;
	var _hp_text_y = _title_text_y + 8;

	var _health_bar_x = _hp_text_x + 16;
	var _health_bar_y = _hp_text_y;

	var _mp_text_x = _hp_text_x;
	var _mp_text_y = _hp_text_y + 8;

	var _magic_bar_x = _mp_text_x + 16;
	var _magic_bar_y = _mp_text_y;



	draw_set_color(c_white); //Default to white draw color for sprites

	draw_sprite(spr_Battle_HUD_Start,0,_window_x,_window_y);//draw window start

	var i = 0;
	for(i = 0; i < _HUD_Scale; i += 1){//draw middle window extensions (based on size)
	    draw_sprite(spr_Battle_HUD_Middle,0,_window_x+sprite_get_width(spr_Battle_HUD_Start)+(i*_spacing),_window_y);
	}

	draw_sprite(spr_Battle_HUD_End,0,_window_x+sprite_get_width(spr_Battle_HUD_Start)+(_HUD_Scale * _spacing),_window_y);//draw window end

	//draw health bars
	Draw_Health_Bar(_health_bar_x,_health_bar_y,_current_health,_max_health,0);
	Draw_Health_Bar(_magic_bar_x,_magic_bar_y,_current_magic,_max_magic,0);


	draw_set_font(menu_font); //Font
	draw_set_color(font_color);//font color
	draw_set_halign(fa_left); //Alignment

	draw_text(_title_text_x,_title_text_y,_title_text);
	draw_text(_hp_text_x,_hp_text_y,Get_Menu_Display_Message("Generic","HP"));
	draw_text(_mp_text_x,_mp_text_y,Get_Menu_Display_Message("Generic","MP"));



	var _max_health_text = _max_health;
	if(_max_health_text >= 100){
	    _max_health_text = "??";
	}

	var _health_text = _current_health;
	if(_health_text >= 100){
	    _health_text = "??";
	}

	var _max_magic_text = _max_magic;
	if(_max_magic_text >= 100){
	    _max_magic_text = "??";
	}

	var _magic_text = _current_magic;
	if(_magic_text >= 100){
	    _magic_text = "??";
	}

	var _max_hp_number_text_x = _window_x + (sprite_get_width(spr_Battle_HUD_Start)+sprite_get_width(spr_Battle_HUD_End)+(_HUD_Scale * _spacing)) - 8;
	var _max_mp_number_text_x = _max_hp_number_text_x;

	var _hp_number_text_x = _max_hp_number_text_x -(2*_spacing);
	var _mp_number_text_x = _hp_number_text_x;

	draw_set_halign(fa_right); //Alignment
	draw_text(_max_hp_number_text_x,_hp_text_y,_max_health_text);
	draw_text(_max_mp_number_text_x,_mp_text_y,_max_magic_text);

	draw_text(_hp_number_text_x,_hp_text_y,string(_health_text)+"/");
	draw_text(_mp_number_text_x,_mp_text_y,string(_magic_text)+"/");

	draw_set_halign(fa_left); //reset Alignment
	draw_set_color(c_white); //reset draw color
}