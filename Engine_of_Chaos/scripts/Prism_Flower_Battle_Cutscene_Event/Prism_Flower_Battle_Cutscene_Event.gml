function Prism_Flower_Battle_Cutscene_Event() {
	switch(state){
	    case "End_Start_Pan":
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.attacks_performed += 1;
	        state = "Perform_Animation";
        
	        //Create Dialogue
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Prism_Flower_Attack"),id,false,true);
	    break;
	    case "End_Animation":
	        var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Prism_Flower_Charge);
	        _this.x_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"X_Pos");
	        _this.y_pos = Get_Weapon_Cutscene_Draw_Position(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker),"Y_Pos");
        
	        _this.min_x = _this.x_pos + 20;
	        _this.max_x = _this.x_pos + 40;
	        _this.min_y = _this.y_pos - 40;
	        _this.max_y = _this.y_pos + 40;
	        state = "Hit_Animation";
	        waiting_for_spell = true;
	    break;
	    case "Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        if(_target.on_screen && waiting_for_spell){//if target is on screen, and we're waiting for spell
	            if(!instance_exists(obj_Spell_Controller)){//if spell controller doesnt exist,
	                waiting_for_spell = false;
	                Create_Spell_Controller("Start_Spell_Hit","Prism_Laser",1,"Right");
	            }
	            else{
	                Run_Spell_Event();
	            }
	        }
	        else{
	            Default_Battle_Cutscene_Event();
	        }
	    break;
	    case "Continue_Attack_Loop":
	        waiting_for_spell = true;
	        Default_Battle_Cutscene_Event();
	    break;
	    default: Default_Battle_Cutscene_Event(); break;
	}



}
