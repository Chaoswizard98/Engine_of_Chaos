function AU_Moorenfirch_Priest_Church_Cutscene(){
	var _jason = player_trigger;
	var _priest = Get_Character("AU_Moorenfirch_Priest");

	switch(state){
		case 0:
			if(_priest.x = 432 && _priest.y = 168){//If priest is already at location
				instance_destroy();//End cutscene
			}
			else{
		        state += 1;
		        _jason.allow_interaction = false;
		        _jason.cutscene_mode = true;
				_priest.cutscene_mode = true;
				Move_Character(_priest,"Up",3,2);
			}
	    break;
		case 1:
			state += 1;
			Move_Character(_priest,"Right",1,2);
		break;
		case 2:
			state += 1; 
			_priest.visible = false;
			_priest.x = 336;
			_priest.y = 144;
			alarm[0] = 30;
		break;
		case 3:
			state += 1;
			_priest.visible = true;
			Move_Character(_priest,"Right",4,2);
		break;
		case 4:
			state += 1;
			Face_Direction(_priest,"Down");
			_jason.allow_interaction = true;
		    _jason.cutscene_mode = false;
			_priest.cutscene_mode = false;
			_priest.dialogue_script = "Generic_Priest_Dialogue";//Dialogue Message ID to print when talked to
			instance_destroy();//End cutscene
		break;
	}
}