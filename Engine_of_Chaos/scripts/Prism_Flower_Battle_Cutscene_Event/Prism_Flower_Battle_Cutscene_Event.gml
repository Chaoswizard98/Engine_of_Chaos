function Prism_Flower_Battle_Cutscene_Event(){
	switch(state){
	    case "End_Start_Pan":
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.attacks_performed += 1;
	        state = "Perform_Animation";
        
	        //Create Dialogue
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Prism_Flower_Attack"),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    break;
	    case "End_Animation":
			Create_Spell_Controller("End_Spell_Flash","SF2_Prism_Laser",1,"Right");
	        waiting_for_spell = true;
	        state = "Hit_Animation";
	    break;
	    case "Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        if(_target.on_screen && waiting_for_spell){//if target is on screen, and we're waiting for spell
	            waiting_for_spell = false;
				//Create Laser Prop
				var _this = Create_Battle_Cutscene_Prop("SF2_Prism_Flower_Projectile",scene_x,scene_y+48,0,1,true,false,sfx_Prism_Flower_Shot);
				_this.prop_tags[0] = false;
				Set_Battle_Prop_Movement(_this,_this.x_pos+scene_width+sprite_get_width(spr_SF2_Prism_Flower_Projectile),_this.y_pos,30);
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