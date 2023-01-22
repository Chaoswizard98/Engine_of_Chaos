function Draw_Minimap() {
	//Creates a minimap to be drawn to the screen
	var _border_size = 7;

	var _window_width = ((room_width / global.Tile_Size)*minimap_tile_size);
	var _window_height = ((room_height / global.Tile_Size)*minimap_tile_size);

	var _window_x = (Get_Anchor_X("Middle") - floor(_window_width/2)) + floor(window_pan);
	var _window_y = Get_Anchor_Y("Middle") - floor(_window_height/2);

	if(!surface_exists(minimap_surface)){
	    event_perform(ev_other,ev_user1);
	}
	draw_surface(minimap_surface,_window_x,_window_y);

	if(show_markers){
	    var _object;
	    //Draw Character Markers
	    if(show_character_markers){
	        with(obj_Character){
	            _object = id;
				if(!_object.hidden){
		            with(obj_Minimap_Controller){
		                draw_sprite(Get_Faction_Stats(Get_Character_Faction("Local",_object,"Total"),"Minimap_Sprite"),marker_flash_state,_border_size + _window_x+(round(_object.x/global.Tile_Size)*minimap_tile_size),_border_size + _window_y+(round(_object.y/global.Tile_Size)*minimap_tile_size));
		            }
				}
	        }
	    }
	    //Draw Chest Markers
	    if(show_chest_markers){
	        with(obj_Chest){
	            _object = id;
	            with(obj_Minimap_Controller){
	                draw_sprite(spr_Minimap_Purple,marker_flash_state,_border_size + _window_x+(round(_object.x/global.Tile_Size)*minimap_tile_size),_border_size + _border_size_window_y+(round(_object.y/global.Tile_Size)*minimap_tile_size));
	            }
	        }
	    }
	}
}