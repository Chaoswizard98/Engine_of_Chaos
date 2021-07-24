if(global.Show_Terrain_Tiles){//if we are showing the terrain tiles (debug mode)
    var temp_sprite
    for(i = 0; i < room_width/global.Tile_Size; i+= 1){
        for(j = 0; j < room_height/global.Tile_Size; j+= 1){
            temp_sprite = Get_Terrain_Sprite(terrain_map[i,j]);
            if(temp_sprite != noone){
                draw_sprite(temp_sprite,0,i*global.Tile_Size,j*global.Tile_Size);
            }
        }
    }
}

