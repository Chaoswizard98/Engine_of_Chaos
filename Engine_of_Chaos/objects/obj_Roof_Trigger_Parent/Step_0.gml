if(!global.In_Battle){
	if(instance_exists(global.Player)){
	    if((round(global.Player.x) = x)&&(round(global.Player.y) = y)){//if player stands on this tile
	        var i = 0;
	        if(state = "Inside"){//hide tile layer
	            for(i = 0; i < indoor_layers; i+= 1){//Show Indoor Layers
					layer_set_visible(layer_get_id(indoor_layer[i]),true);
	            }
	            for(i = 0; i < outdoor_layers; i+= 1){//Hide Roof Layers
					layer_set_visible(layer_get_id(outdoor_layer[i]),false);
	            }
	        }
	        else if(state = "Outside"){//show tile layer
	            for(i = 0; i < indoor_layers; i+= 1){//Hide Indoor Layers
	                layer_set_visible(layer_get_id(indoor_layer[i]),false);
	            }
	            for(i = 0; i < outdoor_layers; i+= 1){//Show Roof Layers
	                layer_set_visible(layer_get_id(outdoor_layer[i]),true);
	            }
	        }
	    }
	}
}

