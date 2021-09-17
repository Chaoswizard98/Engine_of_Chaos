function Global_Battle_Cutscene_Character_Animation_Event(_object) {
	if(!Get_Battle_Cutscene_Sprite_Stats(_object.sprite_ID,_object.animation,"Use_Controller_Animation")){
	    switch(_object.sprite_ID){//switch battle sprite ID
	        case "Noah":
	            Battle_Cutscene_Character_Animation_Noah(_object);//Run Jason Script
	        break;
        
	        default: Battle_Cutscene_Character_Animation_Default(_object); break;// run default script
	    }
	}
}