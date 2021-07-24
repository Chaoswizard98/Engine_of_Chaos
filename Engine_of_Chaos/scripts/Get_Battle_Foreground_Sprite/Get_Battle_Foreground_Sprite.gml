function Get_Battle_Foreground_Sprite() {
	var _terrain = argument[0];

	switch(global.Battle_Cutscene_Terrain){
	    default://default to terrain
	        switch(_terrain){
	            case "Path": return spr_Battle_Foreground_Plains; break;
	            case "Plains": return spr_Battle_Foreground_Plains; break;
	            case "Forest": return spr_Battle_Foreground_Plains; break;
	            case "Overgrowth": return spr_Battle_Foreground_Overgrowth; break;
	            case "Hills": return spr_Battle_Foreground_Hills; break;
	            //case 'Mountain': return spr_Battle_Background_Default; break;
	            case "Water": return spr_Battle_Foreground_Water; break;
	            case "Sand": return spr_Battle_Foreground_Sand; break;
	            //case 'Block': return spr_Battle_Background_Default; break;
	            //case 'City': return spr_Battle_Background_City; break;
	            default: return spr_Blank_Sprite; break;
	        }
	    break;
	}



}
