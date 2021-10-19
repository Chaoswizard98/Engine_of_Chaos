function Draw_Decision_Menu(){
	var _center_x = Get_Anchor_X("Bottom_Middle")+floor(pan);//center draw point x
	var _center_y = Get_Anchor_Y("Bottom_Middle") - sprite_get_height(spr_Dialogue_Window) -30 - sprite_get_height(spr_Empty_Menu_Icon);//center draw point y

	var _icon_separation = icon_separation + sprite_get_width(spr_Empty_Menu_Icon);//spacing between menu icons
	var _x_offset = ((number_of_icons * _icon_separation) -16)/2;//offset for centering the icons

	var _x_pos = _center_x - _x_offset;
	var _y_pos = _center_y;

	var i;
	for(i = 0; i<number_of_icons; i+= 1){//loop draw all icons
	    if(menu_index = i){//if we're hovering over this option
	        draw_sprite(menu_icon[i],image_index,_x_pos+(i*_icon_separation),_y_pos);//animate it
	    }
	    else{//otherwise, dont animate it
	        draw_sprite(menu_icon[i],0,_x_pos+(i*_icon_separation),_y_pos);
	    }
		
	    if(i = number_of_icons-1){//if we've just drawn the last icon
	        draw_sprite(spr_Menu_Name_Window,0,_x_pos+(((i+1)*_icon_separation)),_y_pos);
	        draw_set_font(menu_font);
	        draw_set_color(font_color);
	        draw_text(_x_pos+(((i+1)*_icon_separation))+9,_y_pos+9,menu_name[menu_index]);
	        draw_set_color(c_white);//reset draw color
	    }
	}
}