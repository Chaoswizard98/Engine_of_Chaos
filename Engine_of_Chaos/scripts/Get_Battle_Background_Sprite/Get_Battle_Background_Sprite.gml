function Get_Battle_Background_Sprite() {
	var _terrain = argument[0];

	switch(global.Battle_Cutscene_Terrain){
	    //case 'Ship': ... Etc
	    default://Default to terrain
	        switch(_terrain){
	            case "Path": return spr_Battle_Background_Plains; break;
	            case "Plains": return spr_Battle_Background_Plains; break;
	            case "Forest": return spr_Battle_Background_Forest; break;
	            case "Overgrowth": return spr_Battle_Background_Overgrowth; break;
	            case "Hills": return spr_Battle_Background_Hills; break;
	            case "Mountain": return spr_Battle_Background_Default; break;
	            case "Water": return spr_Battle_Background_Default; break;
	            case "Sand": return spr_Battle_Background_Sand; break;
	            case "Block": return spr_Battle_Background_Default; break;
	            case "City": return spr_Battle_Background_City; break;
	            default: return spr_Battle_Background_Default; break;
	        }
	    break;
	}



}
