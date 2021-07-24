function Get_Terrain_Sprite() {
	switch(argument[0]){
	    case "Free": return spr_Terrain_Free; break;
	    case "Plains": return spr_Terrain_Plains; break;
	    case "Forest": return spr_Terrain_Forest; break;
	    case "Overgrowth": return spr_Terrain_Overgrowth; break;
	    case "Hills": return spr_Terrain_Hills; break;
	    case "Mountain": return spr_Terrain_Mountain; break;
	    case "Water": return spr_Terrain_Water; break;
	    case "Sand": return spr_Terrain_Sand; break;
	    case "Block": return spr_Terrain_Block; break;
	    case "City": return spr_Terrain_City; break;
	    default: return noone; break;
	}



}
