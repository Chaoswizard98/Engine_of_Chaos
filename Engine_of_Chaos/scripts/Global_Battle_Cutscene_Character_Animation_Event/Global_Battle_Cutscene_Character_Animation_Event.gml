function Global_Battle_Cutscene_Character_Animation_Event() {
	var _object = argument[0];

	if(!Get_Battle_Cutscene_Sprite_Stats(Get_Character_Battle_Cutscene_Sprite("Local",_object.character,"Total"),_object.animation,"Use_Controller_Animation")){
	    switch(Get_Character_Battle_Cutscene_Sprite("Local",_object.character,"Total")){//switch battle sprite ID
	        case "Noah":
	            Battle_Cutscene_Character_Animation_Noah(_object);//Run Jason Script
	        break;
        
	        default: Battle_Cutscene_Character_Animation_Default(_object); break;// run default script
	    }
	}



}
