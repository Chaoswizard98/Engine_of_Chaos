var _surface = surface_create(room_width,room_height);
Draw_Light_Surface(_surface);//draw it
surface_free(_surface);
/*if(surface_exists(light_surface)){//if light surface exists,
    Draw_Light_Surface();//draw it
}
else{//if not
    light_surface = surface_create(room_width,room_height);//re-create it
    Draw_Light_Surface();//then draw it
}

/* */
/*  */
