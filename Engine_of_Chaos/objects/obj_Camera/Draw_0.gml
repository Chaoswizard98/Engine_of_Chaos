if(global.Show_FPS){
    draw_set_colour(c_white);
    draw_set_font(fnt_MenuFont);
    draw_sprite(spr_Menu_Name_Window,0,Get_Camera_X() + 8, Get_Camera_Y() + Get_Camera_Height() - (8 + sprite_get_height(spr_Menu_Name_Window)));
    draw_text(Get_Camera_X() + 16, Get_Camera_Y() + Get_Camera_Height() - (sprite_get_height(spr_Menu_Name_Window)),string_hash_to_newline("FPS: " + string(fps)));
}

