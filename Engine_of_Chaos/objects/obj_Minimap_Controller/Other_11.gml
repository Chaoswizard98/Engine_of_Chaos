var _reduced_size = (1/(global.Tile_Size / minimap_tile_size));
var _border_size = 7;

var _window_width = ((room_width / global.Tile_Size)*minimap_tile_size)+(2*_border_size);
var _window_height = ((room_height / global.Tile_Size)*minimap_tile_size)+(2*_border_size);


var _temp_surface = surface_create(room_width,room_height);//Create temporary full scale room surface
surface_set_target(_temp_surface);
var i = 0;
for(i = 0; i < number_of_tile_layers; i += 1){
	draw_tilemap(layer_tilemap_get_id(layer_get_id(tile_layers[i])), 0,0);//Draw tile layers
}
surface_reset_target();

minimap_surface = surface_create(_window_width,_window_height);

//Creates a minimap to be drawn to the screen
surface_set_target(minimap_surface);


//Draw the top/bottom
for (i=0; i < (room_width / global.Tile_Size); i+=1){
    draw_sprite(spr_Window_Border_T,0,(i*minimap_tile_size) + _border_size,0);
    draw_sprite(spr_Window_Border_B,0,(i*minimap_tile_size) + _border_size,_window_height - _border_size);
}
//Draw Left/right
for (i=0; i < (room_height / global.Tile_Size); i+=1){
    draw_sprite(spr_Window_Border_L,0,0,_border_size + (i*minimap_tile_size));
    draw_sprite(spr_Window_Border_R,0,_window_width - _border_size,_border_size + (i*minimap_tile_size));
}

//Draw the corners
draw_sprite(spr_Window_Corner_TL,0,0,0);
draw_sprite(spr_Window_Corner_TR,0,_window_width - _border_size,0);
draw_sprite(spr_Window_Corner_BL,0,0,_window_height - _border_size);
draw_sprite(spr_Window_Corner_BR,0,_window_width - _border_size,_window_height - _border_size);


draw_surface_ext(_temp_surface,_border_size,_border_size,_reduced_size,_reduced_size,0,c_white,1);

surface_reset_target();

surface_free(_temp_surface);