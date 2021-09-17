function Global_Battle_Cutscene_Prop_Event() {
	var _effect = argument[0];
	var _event = argument[1];
	var _object = argument[2];

	switch(_event){
	    //===============
	    //Spell Creation= (called from spell controller)
	    //===============
	    case "Create_Event":
	        switch(_effect){
	            case "Blaze": Blaze_Create_Event(_object); break;
				case "SF2_Blaze": SF2_Blaze_Create_Event(_object); break;
	            case "Explosion_Loop": Explosion_Loop_Create_Event(_object); break;
	            case "Burst_Rock_Explosion": Burst_Rock_Explosion_Loop_Create_Event(_object); break;
	            case "Prism_Flower": Prism_Flower_Create_Event(_object); break;
	            default: with(_object){ event_perform(ev_other,ev_user0); } break; //skip event by default
	        }
	    break;
	    //================
	    //Spell Animation= (called from battle cutscene prop)
	    //================
	    case "Animation_Event":
	        switch(_effect){
	            case "Heal": Heal_Animation_Event(_object); break;
	            case "Blaze_Fireball": Blaze_Fireball_Animation_Event(_object); break;
	        }
	    break;
	    //===========
	    //Spell Loop= (called from spell controller)
	    //===========
	    case "Loop_Event":
	        switch(_effect){
	            case "Blaze_Level_2": Blaze_Level_2_Loop_Event(_object); break;
	            case "Explosion_Loop": Explosion_Loop_Event(_object); break;
	            case "Burst_Rock_Explosion": Explosion_Loop_Event(_object); break;
	        }
	    break;
	    //==========
	    //Spell Hit= (called from spell controller)
	    //==========
	    case "Spell_Hit_Event":
	        switch(_effect){
	            case "Heal": Heal_Spell_Hit_Event(_object); break;
	            case "Prism_Laser": Prism_Laser_Hit_Event(_object); break;
	            default: with(_object){ event_perform(ev_other,ev_user0); } break; //skip event by default
	        }
	    break;
	    //===============
	    //Projectile Hit= (called from obj_Projectile)
	    //===============
	    case "Projectile_Hit":
	        switch(_effect){
	            case "Blaze_Level_2":  Create_Spell_Controller("End_Spell_Flash","Blaze",2,_object.projectile_direction,"Projectile"); break;
	            case "Explosion": Explosion_Projectile_Hit_Event(_object); break;
	            case "Explosion_Loop": Explosion_Loop_Projectile_Hit_Event(_object); break;
	            default: with(_object){ event_perform(ev_other,ev_user0); } break; //skip event by default
	        }
	    break;
	}



}
