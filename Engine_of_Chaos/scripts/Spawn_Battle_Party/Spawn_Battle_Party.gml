function Spawn_Battle_Party() {
	with(obj_Party_Spawn_Location){
	    var i = 0;
	    var j = 0;
	    for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	        if(global.Faction[i] = faction){//if character is a member of the faction we're spawning in
	            if(spawn_function = "All"){
	                if(Spawn_Battle_Party_Character(i,j)){
	                    break;
	                }
	                j+= 1;
	            }
	            else if(spawn_function = "Battle_Party"){
	                if(global.In_Battle_Party[i]){//if they're in the battle party
	                    if(Spawn_Battle_Party_Character(i,j)){
	                        break;
	                    }
	                    j+= 1;
	                }
	            }
	            else if(spawn_function = "Reserves"){
	                if(!global.In_Battle_Party[i]){//if they're not in the battle party
	                    if(Spawn_Battle_Party_Character(i,j)){
	                        break;
	                    }
	                    j+= 1;
	                }
	            }
	        }
	    }
	}
	instance_destroy(obj_Party_Spawn_Location);//destroy all spawn objects



}
