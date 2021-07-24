//Hide screen with color
draw_set_alpha(fade_alpha);
draw_set_color(fade_color);
draw_rectangle_color(Get_Camera_X(),Get_Camera_Y(),Get_Camera_X()+Get_Camera_Width(),Get_Camera_Y()+Get_Camera_Height(),fade_color,fade_color,fade_color,fade_color,false);

draw_set_alpha(1);//reset alpha so we dont fade everything else

