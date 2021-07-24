function Create_Terrain_Controller() {
	var _this = instance_create_layer(0,0,"Terrain_Instance_Layer",obj_Terrain_Controller);
	var i,j;

	//loop through all tiles and add them to the array
	for(i = 0; i < room_width/global.Tile_Size; i+= 1){
	    for(j = 0; j < room_height/global.Tile_Size; j+= 1){
	        //========================
	        //check for terrain tiles=
	        //========================
	        if(instance_position(i*global.Tile_Size,j*global.Tile_Size,obj_Terrain_Parent)!= noone){//if terrain exists,
	            _this.terrain_map[i,j] = instance_position(i*global.Tile_Size,j*global.Tile_Size,obj_Terrain_Parent).terrain_type;
	        }
	        else{//otherwise treat it as a free tile
	            _this.terrain_map[i,j] = "Free";
	        }
	        //===================
	        //check for AI tiles=
	        //===================
	        if(instance_position(i*global.Tile_Size,j*global.Tile_Size,obj_AI_Region_Parent)!= noone){//if terrain exists,
	            _this.ai_region_map[i,j] = instance_position(i*global.Tile_Size,j*global.Tile_Size,obj_AI_Region_Parent).ai_region;
	        }
	        else{//otherwise treat it as a free tile
	            _this.ai_region_map[i,j] = 1;
	        }
	        //===========================
	        //Character move range array=
	        //===========================
	        _this.battle_movement_map[i,j] = false;//characters cant move here (default move range off)
	    }
	}

	with(obj_Terrain_Parent){
	    instance_destroy();
	}
	with(obj_AI_Region_Parent){
	    instance_destroy();
	}



}
