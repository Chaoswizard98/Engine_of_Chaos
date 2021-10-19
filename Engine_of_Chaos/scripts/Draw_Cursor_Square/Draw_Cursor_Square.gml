function Draw_Cursor_Square() {
	var i = 0;
	var j = 0;
	var _xPos = -1*(cursor_size -1);
	var _yPos = -1*(cursor_size -1);

	var x_offset = 3;
	var y_offset = 3;
	for(i = 0; i<((cursor_size*2)-1); i+=1){
	    for(j = 0; j<((cursor_size*2)-1); j+=1){
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+x_offset,y+(_yPos*global.Tile_Size)+y_offset,1,1,0,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+x_offset,y+(_yPos*global.Tile_Size)+global.Tile_Size-y_offset,1,1,90,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size-x_offset,y+(_yPos*global.Tile_Size)+global.Tile_Size-y_offset,1,1,180,c_white,1);
	        draw_sprite_ext(spr_Cursor_Corner_Outer,0,x+(_xPos*global.Tile_Size)+global.Tile_Size-x_offset,y+(_yPos*global.Tile_Size)+y_offset,1,1,270,c_white,1);
	        _xPos += 1;
	    }
	    _yPos += 1;
	    _xPos = -1*(cursor_size -1);
	}
}