function Draw_Cursor_Default() {
	var i = 0;
	var _row = 0;
	var _invert = false;
	var _total_tiles = 1;
	var _first_tick = true;

	var j = 1;
	for(j = 1; j<(cursor_size); j+= 1){
	    _total_tiles += (4*j);
	}

	var _xPos = 0;
	var _yPos = -1*(cursor_size -1);
	var x_offset = 0;
	var y_offset = 0;

	for(i = 0; i<_total_tiles; i+= 1){
	    if((_xPos = 0)&&(_yPos = 0)){
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+x_offset,y+(_yPos*global.Tile_Size)+y_offset,1,1,0,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+x_offset,y+(_yPos*global.Tile_Size)+global.Tile_Size-y_offset,1,1,90,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size-x_offset,y+(_yPos*global.Tile_Size)+global.Tile_Size-y_offset,1,1,180,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size-x_offset,y+(_yPos*global.Tile_Size)+y_offset,1,1,270,c_white,1);
	    }
	    else{

	    if(_first_tick){
	        if(_invert){
	            draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size),y+(_yPos*global.Tile_Size)+global.Tile_Size,1,1,90,c_white,1);
	            draw_sprite_ext(spr_Cursor_Corner_Inner,0,x+(_xPos*global.Tile_Size),y+(_yPos*global.Tile_Size),1,1,90,c_white,1);
	        }
	        else{
	            draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size),y+(_yPos*global.Tile_Size),1,1,0,c_white,1);
	            if(i != 0){
	                draw_sprite_ext(spr_Cursor_Corner_Inner,0,x+(_xPos*global.Tile_Size)+global.Tile_Size,y+(_yPos*global.Tile_Size),1,1,0,c_white,1);
	            }
	            if(_row = cursor_size-1){
	                draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size),y+(_yPos*global.Tile_Size)+global.Tile_Size,1,1,90,c_white,1);
	            }
	        }
	    }
	    if(_xPos = _row){
	        if(_invert){
	            draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size,y+(_yPos*global.Tile_Size)+global.Tile_Size,1,1,180,c_white,1);
	            draw_sprite_ext(spr_Cursor_Corner_Inner,0,x+(_xPos*global.Tile_Size)+global.Tile_Size,y+(_yPos*global.Tile_Size),1,1,180,c_white,1);
	        }
	        else{
	            draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size,y+(_yPos*global.Tile_Size),1,1,270,c_white,1);
	            if(i != 0){
	                draw_sprite_ext(spr_Cursor_Corner_Inner,0,x+(_xPos*global.Tile_Size),y+(_yPos*global.Tile_Size),1,1,270,c_white,1);
	            }
	            if(_row = cursor_size-1){
	                draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size,y+(_yPos*global.Tile_Size)+global.Tile_Size,1,1,180,c_white,1);
	            }
	        }
	    }
	    }
	    _xPos += 1;
	    _first_tick = false;
	    if(_xPos = (_row +1)){//if end of row,
	        _first_tick = true;
	        if(_row = cursor_size-1){
	            _invert = true;
	        }
	        if(_invert){
	            _row -= 1;
	        }
	        else{
	            _row += 1;
	        }
	        _yPos += 1;
	        _xPos = -1*(_row);
	    }
	}



}
