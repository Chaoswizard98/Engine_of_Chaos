//Hide screen with color
draw_set_alpha(flash_alpha);
draw_set_color(flash_color);
//show_message(string(view_xview));
draw_rectangle_color(Get_Camera_X(),Get_Camera_Y(),Get_Camera_X()+Get_Camera_Width(),Get_Camera_Y()+Get_Camera_Height(),flash_color,flash_color,flash_color,flash_color,false);

draw_set_alpha(1);//reset alpha so we dont fade everything else

