function Default_Battle_Cutscene_Event(){
	//Calls from screen fade controller.
	if(state = "Start"){
	    Prepare_For_Battle_Cutscene();//End character turn, clear menus, etc.
	    Get_Battle_Cutscene_Action();//Figure out wtf we do, melee attack, cast spell, special attack, etc etc.

	    //================
	    //Set up Cutscene=
	    //================
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target;
	    target = original_target;
	    Generate_Battle_Cutscene_AoE();//Generate all targets that are hit due to AoE
	    target_index = number_of_targets-1;
	    if(number_of_targets != 0){//if we have a valid target,
	        target = target_array[target_index];//set target to first target (if not, target is attacker)
	        _target = Get_Battle_Cutscene_Character(target);
	    }
	    else{
	        target = attacker;
	        _target = _attacker;
	    }
    
	    background_sprite = Get_Terrain_Stats(Get_Battle_Background(_attacker, _target),"Background_Sprite");//get battle background
	    _attacker.display_HUD = true;//Show HUD for attacker (note target can also be the attacker (heal self))
    
	    if(_attacker.location != _target.location){//If both attacker and target are not in the same location (enemies)
	        _target.display_HUD = true;//Snow Target HUD
	    }
    
	    if(!target_starts_on_screen){
	        background_sprite = Get_Terrain_Stats(Get_Battle_Background(Get_Battle_Cutscene_Character(attacker), noone),"Background_Sprite");//use attacker background at start (target not on screen)
	        _target.display_HUD = false;//Hide target HUD, they arent on screen
	    }
	    Continue_Screen_Fade(0,.04,"in",id);//color, start, end, speed, direction, object
	}
	//==================
	//Pan Characters In=
	//==================
	else if(state = "Start_Pan"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    var _criteria = 1;
	    state = "End_Start_Pan";
    
	    instance_destroy(obj_Screen_Fade_Controller);
	    Pan_Battle_Cutscene_Character(Get_Battle_Cutscene_Character(attacker),"in");//Pan Attacker in
    
	    if(_target.display_HUD && (_attacker != _target)){//If target should also be on screen,
	        Pan_Battle_Cutscene_Character(Get_Battle_Cutscene_Character(target),"in"); 
	        _criteria += 1;
	    }
    
	    Set_Battle_Cutscene_Event_Criteria(_criteria,10);//counter,delay
	}
	//==========================
	//Character Attacks Message=
	//==========================
	else if(state = "End_Start_Pan"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _message = "";
	    _attacker.attacks_performed += 1;
	    state = "Perform_Animation";
    
	    var _attacker_name = Get_Character_Name("Local",attacker,"Total");
	    switch(action){
	        case "Melee_Attack": _message = Get_General_Messages("Battle_Cutscene","Melee_Attack", _attacker_name); break;
	        case "Ranged_Attack": _message = Get_General_Messages("Battle_Cutscene","Ranged_Attack", _attacker_name); break;
	        case "Cast_Spell": _message = Get_General_Messages("Battle_Cutscene","Cast_Spell", _attacker_name, Get_Spell_Slot_Stats("Local",attacker,inventory_slot,inventory_level,"Spell_Name"), string(inventory_level)); break;
	        case "Use_Item": _message = Get_General_Messages("Battle_Cutscene","Use_Item", _attacker_name,Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Item_Name")); break;
	        case "Word_of_Power": _message = Get_General_Messages("Battle_Cutscene","Word_of_Power", _attacker_name); break;
	    }
    
	    //Create Dialogue
	    Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	}
	//==================
	//Perform Animation=
	//==================
	else if(state = "Perform_Animation"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    state = "End_Animation";
	    blocked_attack = false;
	    critical_hit = false;
    
	    if(allow_blocking && !Landed_Successful_Hit(attacker,target)){//if we allow blocking and attacker didnt hit the target,
	        blocked_attack = true;//target blocked the attack
	        _target.blocked_attack = true;//(In case of multiple hits (multi-strike animation), they'll block all hits)
	    }
	    else{//Character hit target, test for crit
	        critical_hit = Character_Crits(attacker);//Does character crit?
	    }
    
	    switch(action){
	        case "Melee_Attack":
	            if(critical_hit){
	                Play_Sound(sfx_Critical);
	                Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Melee_Crit",true,true,true);//play crit animation  
	            }
	            else{
	                Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Melee_Attack",true,true,true);//play attack animation
	            }
	        break;
	        case "Ranged_Attack":
	            if(critical_hit){
	                Play_Sound(sfx_Critical);
	                Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Ranged_Crit",true,true,true);//play crit animation  
	            }
	            else{
	                Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Ranged_Attack",true,true,true);//play attack animation
	            }
	        break;
	        case "Cast_Spell": Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Cast_Spell",true,true,true); break;//play cast spell animation
	        case "Use_Item": Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Use_Item",true,true,true); break;//play use item animation
	        case "Word_of_Power": Play_Battle_Animation(Get_Battle_Cutscene_Character(attacker),"Speak_Word",true,true,true); break;//play word of power animation
	    }
	}
	//==============
	//End Animation=
	//==============
	else if(state = "End_Animation"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    var _projectile = noone;//projectile being launched
	    var _direction = "Left";//direction to launch projectile / spell
	    state = "Hit_Animation";
    
	    if(number_of_targets = 0){//if no targets exist
	        state = "No_Valid_Targets";//skip all other events
	    }

	    if(_attacker.position = "Left"){//get projectile direction
	        _direction = "Right";
	    }
    
	    switch(action){
	        case "Melee_Attack": case "Ranged_Attack"://Physical Attacks
	            _projectile = Create_Projectile(Get_Projectile_Setup(attacker,_attacker.animation,"Projectile"),Get_Projectile_Setup(attacker,_attacker.animation,"Start_X"),Get_Projectile_Setup(attacker,_attacker.animation,"Start_Y"),Get_Projectile_Setup(attacker,_attacker.animation,"Projectile_Path"),_direction);
	            if(_projectile != noone){//if we created a projectile
	                waiting_for_projectile = true;//wait for it to hit
	                Set_Battle_Cutscene_Event_Criteria(1,0);//counter,delay
	            }
	            else{
	                event_perform(ev_other,ev_user0);//no projectile was launched, skip to hit animation
	            }
	        break;
	        case "Cast_Spell": case "Use_Item": case "Word_of_Power": //Magical Attacks
	            if(action = "Cast_Spell"){
	                Set_Character_Magic("Local",attacker,"Remove",Get_Spell_Stats(effect,effect_level,"Magic_Cost","Local",attacker));
	            }
	            if(((action = "Cast_Spell")||(action = "Word_of_Power"))&&(Character_Is_Under_Effect("Local",attacker,"Silence"))){//if character is silenced
	                state = "Spell_Fizzles";//skip all other events
	                Play_Sound(sfx_Spell_Cast);
	                event_perform(ev_other,ev_user0);//No spell effect due to silence, skip to next event
	            }
	            else{
	                Create_Spell_Controller("Start_Spell_Flash",effect,effect_level,_direction);
	                waiting_for_spell = true;
	            }
	        break;
	    }
	}
	//=================
	//No Valid Targets=
	//=================
	else if(state = "No_Valid_Targets"){
	    state = "Continue_Attack_Loop";
	    allow_multiple_attacks = false;
	    Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Nothing_Happens"),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	}
	//=================
	//No Valid Targets=
	//=================
	else if(state = "Spell_Fizzles"){
	    state = "End_Attack_Phase";
	    allow_multiple_attacks = false;
	    allow_counter_attacks = false;
	    Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Spell_Fizzles"),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	}
	//===================
	//Play Hit Animation=
	//===================
	else if(state = "Hit_Animation"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    //Reset target stats
	    _target.damage_taken = 0;
	    _target.damage_healed = 0;
	    _target.magic_damage_taken = 0;
	    _target.magic_restored = 0;
    
	    if(_target.on_screen){//if target is on screen
	        if(waiting_for_projectile){//if we're waiting for a projectile
	            Run_Projectile_Event();//activate projectile
	        }
	        else if(waiting_for_spell){//if we're waiting for a spell
	            Run_Spell_Event();//activate spell
	        }
	        else{//all caught up, continue with event
	            var _criteria = 0;
	            var _delay = 10;
	            var _damage = 0;
	            var _magic_restored = 0;
	            state = "End_Hit_Animation";
        
	            if(blocked_attack){//if target blocked the attack
	                _target.blocked_attack = false;
	                Play_Sound(sfx_Block);
	                Grant_Experience(attacker,target,"Miss",0);
	                Play_Battle_Animation(_target,"Block",true,true,true);
	                _criteria += 1;
	            }
	            else{//attack wasnt blocked
	                switch(action){
	                    case "Melee_Attack": case "Ranged_Attack":
	                        _damage = Calculate_Physical_Damage(attacker,target,critical_hit,counter_attack);
	                    break;
	                    case "Cast_Spell": case "Use_Item": case "Word_of_Power":
	                        _damage = Calculate_Spell_Damage(attacker,target,effect,effect_level,critical_hit,counter_attack,number_of_targets);
	                        _magic_restored = Get_Spell_Stats(effect,effect_level,"Magic_Restored","Local",attacker);
	                    break;
	                }
                
	                //
					
                
	                if(_damage > 0){//If target took damage
	                    if(_target.location = "Foreground"){
	                        Flash_Battle_Cutscene(c_white,3);
	                    }
	                    _target.damage_taken = _damage;
	                    Damage_Character(target,_damage);
	                    Grant_Experience(attacker,target,"Normal",_damage);
	                    Play_Battle_Animation(Get_Battle_Cutscene_Character(target),"Take_Hit",true,true,true);
	                    _criteria += 1;
	                    Play_Sound(sfx_Hit);
	                }
	                else if(_damage < 0){//if target was healed
	                    _target.damage_healed = min(abs(_damage),(Get_Character_Max_Health("Local",target,"Total")-Get_Character_Health("Local",target,"Total")));
	                    _target.damage_taken = _damage;
	                    Heal_Character(target,abs(_damage));
	                    Grant_Experience(attacker,target,"Heal",abs(_target.damage_healed));
	                    //Play_Sound(sfx_Heal);
	                }
	                else{//no damage or healing. Status effect / summoning
	                    if(_magic_restored > 0){
	                        Play_Sound(sfx_Heal);
	                    }
	                }
                
	                if(_magic_restored > 0){
	                    _target.magic_damage_taken = _magic_restored;
	                    _target.magic_restored = min(abs(_magic_restored),(Get_Character_Max_Magic("Local",target,"Total")-Get_Character_Magic("Local",target,"Total")));
	                    Set_Character_Magic("Local",target,"Add",_target.magic_restored);
	                    Grant_Experience(attacker,target,"Magic_Restore",abs(_target.magic_restored));
	                }
	            }
            
	            Set_Battle_Cutscene_Event_Criteria(_criteria,_delay);//counter,delay
	        }
	    }
	    else{
	        Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	        Pan_Battle_Cutscene("To_Target");
	    }
	}
	//====================
	//Took Damage Message=
	//====================
	else if(state = "End_Hit_Animation"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    var _message = "";
	    var _criteria = 0;
	    var _delay = 0;
	    state = "Continue_Attack_Loop";
    
	    var _target_name = Get_Character_Name("Local",target,"Total");
	    if(blocked_attack){//if target blocked the attack
	        blocked_attack = false;
	        _message += Get_General_Messages("Battle_Cutscene","Blocked_Attack", _target_name);
	    }
	    else{
	        if(_target.damage_taken > 0){//Target takes damage
	            if(critical_hit){//if critical hit
	                critical_hit = false;
	                _message += "Critical hit! ";
	            }
	            _message += Get_General_Messages("Battle_Cutscene","Took_Damage", _target_name,string(_target.damage_taken));
            
	            if(global.Damage_Cures_Sleep){//if taking damage cures sleep status
	                if(Character_Is_Under_Effect("Local",target,"Sleep")){
	                    Cure_Status_Effect("Local",target,"Sleep");
	                    _message += Global_Status_Effect_Message("Local",target,"Sleep","Effect_Ends");
	                    _message = string_delete(_message,string_length(_message),1);//delete last "pause break" symbol
	                }
	            }
	        }
	        else if(_target.damage_taken < 0){//target regains HP
	            _message += Get_General_Messages("Battle_Cutscene","Regained_Health", _target_name,string(_target.damage_healed));
	        }
	        else{//No damage or Healing. Summon Spell?
        
	        }
        
	        if(_target.magic_damage_taken > 0){//target regains MP
	            _message += Get_General_Messages("Battle_Cutscene","Regained_Magic", _target_name,string(_target.magic_restored));
	        }
        
	        _message += Apply_Battle_Cutscene_Status_Effects(attacker,target,action,effect,effect_level);
        
	        if(Character_Is_Dead("Local",target)){//if character died
	            _message += Get_General_Messages("Battle_Cutscene","Was_Defeated", _target_name);
	            Play_Battle_Animation(_target,"Death",true,true,true);//play death animation
	            _message += Get_Item_Drops(attacker,target);
	            Grant_Gold(attacker,target);
				attacker.kills += 1;
				target.deaths += 1;
	            _criteria += 1;
	        }
        
	        if(_message != ""){
	            if(string_char_at(_message,1) = "\n"){//if we're starting with a line break
	                _message = string_delete(_message,1,1);//remove the leading # symbol
	            }
	        }
        
	        if(_message = ""){//if we arent displaying a message
	            _message = Get_General_Messages("Battle_Cutscene","Spell_Has_No_Effect", _target_name);
	        }
	    }
    
	    Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    _criteria += 1;
    
	    Set_Battle_Cutscene_Event_Criteria(_criteria,_delay);//counter,delay
	}
	//================
	//Attack AoE Loop=
	//================
	else if(state = "Continue_Attack_Loop"){
	    var _counter = 0;
	    var _delay = 0;
	    target_index -= 1;
	    state = "End_Attack_Phase";
    
	    while((target_index >= 0)&&(Character_Is_Dead("Local",target_array[target_index]))){//loop to find valid target (skip dead characters)
	        target_index -= 1;
	    }
    
	    if(target_index >= 0){//If there are more targets,
	        performing_aoe = true;
	        previous_target = target;
	        target = target_array[target_index];
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        var _target = Get_Battle_Cutscene_Character(target);
	        var _previous_target = Get_Battle_Cutscene_Character(previous_target);
	        state = "Hit_Animation";
        
	        if(_previous_target.image_speed = 0){//if previous target is mid animation (due to blocking)
	            _counter += 1;
	            _delay = 10;
	            Continue_Battle_Animation(_previous_target);//Finish the animation (Return to Idle stance)
	        }
        
	        if(allow_blocking && !Landed_Successful_Hit(attacker,target)){//if we allow blocking and attacker didnt hit the target,
	            blocked_attack = true;//target blocked the attack
	            _target.blocked_attack = true;//(In case of multiple hits (multi-strike animation), they'll block all hits)
	        }
	        else{//Character hit target, test for crit
	            critical_hit = Character_Crits(attacker);//Does character crit?
	        }
        
	        switch(action){
	            case "Cast_Spell": case "Use_Item": case "Word_of_Power":
	                waiting_for_spell = true;
	            break;
	        }
	    }
	    else{//No more targets, end attack phase
	        with(obj_Spell_Controller){//destroy spell controller
	            instance_destroy();
	        }
	        with(obj_Battle_Cutscene_Prop){//end all spell loops (spell props delete after final frame)
	            loop_animation = false;
				if(instant_destruction){//if we destroy this object immediately on spell controller end.
					instance_destroy();
				}
	        }
	        performing_aoe = false;
	        tint_color = draw_color;
	    }
	    Set_Battle_Cutscene_Event_Criteria(_counter,_delay);//counter,delay
	}
	//=================
	//End Attack Phase=
	//=================
	else if(state = "End_Attack_Phase"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);
	    var _new_attacker = attacker;
	    var _message = "";
	    var _counter = 0;
	    var _valid_target = false;
	    var _index = number_of_targets - 1;
	    counter_attack = false;
	    state = "Finish_Attack_Animation";
    
	    for(_index = (number_of_targets - 1); _index >= 0; _index -= 1){//loop through target array to see if we still have a valid target
	        if(!Character_Is_Dead("Local",target_array[_index])){//make sure they arent dead
	            _valid_target = true;
	            break;
	        }
	    }
    
	    if(_valid_target && allow_multiple_attacks && Character_Attacks_Again(original_attacker)){//if a target exists in AoE range, we get multi attacks, and the original target isnt dead (if OT is un-targetable (terrain) then fire if any targets exist)
	        state = "Character_Attacks_Again";
	    }
	    else{
	        allow_multiple_attacks = false;
        
	        //===============================
	        //Test for item becoming damaged=
	        //===============================
	        switch(action){
	            case "Melee_Attack": case "Ranged_Attack": case "Word_of_Power"://Test For Item Damaged on Attack
	                var _equipment_slot = 0;
	                for(_equipment_slot = 0; _equipment_slot < global.Number_Of_Equipment_Slots; _equipment_slot += 1){//loop through all equipment
	                    if(Item_Degrades("Local",attacker,Get_Equipped_Item_Slot("Local",attacker,_equipment_slot),"Attack_Degrade_Chance")){
	                        if(Get_Equipped_Item_Stats("Local",attacker,_equipment_slot,"Degrades_To") = "none"){//if it fully breaks,
	                            _message += Get_General_Messages("Battle_Cutscene",Get_Equipped_Item_Stats("Local",attacker,_equipment_slot,"Broken_Message"), Get_Equipped_Item_Stats("Local",attacker,_equipment_slot,"Item_Name"));//Item broke
	                        }
	                        else{
	                            _message += Get_General_Messages("Battle_Cutscene",Get_Equipped_Item_Stats("Local",attacker,_equipment_slot,"Damaged_Message"), Get_Equipped_Item_Stats("Local",attacker,_equipment_slot,"Item_Name"));//Item was damaged
	                        }
	                        Damage_Item("Local",attacker,Get_Equipped_Item_Slot("Local",attacker,_equipment_slot));//Damage the item
	                    }
	                }
	            break;
	            case "Use_Item"://Test for Item Damaged on Use
	                if(Item_Degrades("Local",attacker,inventory_slot,"Use_Degrade_Chance")){
	                    if(Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Degrades_To") = "none"){//if it fully breaks,
	                        _message += Get_General_Messages("Battle_Cutscene",Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Broken_Message"), Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Item_Name"));//Item broke
	                    }
	                    else{
	                        _message += Get_General_Messages("Battle_Cutscene",Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Damaged_Message"), Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Item_Name"));//Item was damaged
	                    }
	                    Damage_Item("Local",attacker,inventory_slot);//Damage the item
                    
	                    if(_message = "\n"){//if null message,
	                        _message = "";//reset
	                    }
	                }
	            break;
	        }
	        //==================================
	        //If Item was Damaged, Show Message=
	        //==================================
	        if(_message != ""){
	            _counter += 1;
	            Create_Dialogue(noone,noone,string_delete(_message,1,1),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	        }
	        //==================
	        //=Test For Counter=
	        //==================
	        if(allow_counter_attacks){//if we are allowing counter attacks, loop through all targets and test for counter
	            with(obj_Battle_Cutscene_Character){
	                if(Character_Counter_Attacks(character,obj_Battle_Cutscene_Controller.attacker)){//test for counter
	                    can_counter = false;//cant counter anymore in the future
	                    counter_target = obj_Battle_Cutscene_Controller.attacker;//remember who attacked us
	                }
	            }
	            allow_counter_attacks = false;//disable counter attack testing
	        }
	        //========================
	        //Find who counters first=
	        //========================
	        with(obj_Battle_Cutscene_Character){//grab the first countering character
	            if((counter_target != noone)&&(!Character_Is_Dead("Local",character))){
	                if(!Character_Is_Dead("Local",counter_target)){//if the target isnt dead
	                    _new_attacker = character;
	                    obj_Battle_Cutscene_Controller.counter_attack = true;
	                    break;
	                }
	            }
	        }
	        //==========
	        //Set Flags=
	        //==========
	        if(counter_attack){
	            state = "Counter_Attack";
	        }
	        else{
	            with(obj_Battle_Cutscene_Character){//grab the first countering character
	                if((!played_death_event) && (character.battle_cutscene_death_event != "none")&&(Character_Is_Dead("Local",character))){//if character has death event and isnt dead
	                    obj_Battle_Cutscene_Controller.state = "Death_Event";
	                    _new_attacker = character;
	                    break;
	                }
	            }
	        }
	    }
    
	    //===========================================
	    //=End animations and prepare for next state=
	    //===========================================
	    if(_attacker.image_speed = 0){//if attacker is mid-animation
	        _counter += 1;
	        Continue_Battle_Animation(_attacker);//return to idle
	    }
	    if((_target.image_speed = 0) &&(_attacker != _target)){//if target is mid-animation
	        _counter += 1;
	        Continue_Battle_Animation(_target);//return to idle
	    }
    
	    attacker = _new_attacker;//set attacker to counter attacker (or self if multi-attack)
    
	    Set_Battle_Cutscene_Event_Criteria(_counter,10);//counter,delay
	}
	//========================
	//Character Attacks Again=
	//========================
	else if(state = "Character_Attacks_Again"){
	    attacker = original_attacker;
	    previous_target = target;
    
	    target_index = number_of_targets-1;//reset target index
	    var _index;
	    for(_index = target_index; _index >= 0; _index -= 1){
	        if(!Character_Is_Dead("Local",target_array[_index])){
	            target_index = _index;
	            target = target_array[target_index];//grab target
	            break;
	        }
	    }
    
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    var _target = Get_Battle_Cutscene_Character(target);

	    if(_attacker.on_screen){
	        var _message = "";
	        _attacker.attacks_performed += 1;
	        state = "Perform_Animation";
	        var _attacker_name = Get_Character_Name("Local",attacker,"Total");
	        switch(action){
	            case "Melee_Attack": _message = Get_General_Messages("Battle_Cutscene","Attacks_Again_Melee", _attacker_name); break;
	            case "Ranged_Attack": _message = Get_General_Messages("Battle_Cutscene","Attacks_Again_Ranged", _attacker_name); break;
	            case "Cast_Spell": _message = Get_General_Messages("Battle_Cutscene","Attacks_Again_Cast_Spell", _attacker_name); break;
	            case "Use_Item": _message = Get_General_Messages("Battle_Cutscene","Attacks_Again_Use_Item", _attacker_name); break;
	            case "Word_of_Power": _message = Get_General_Messages("Battle_Cutscene","Attacks_Again_Word_of_Power", _attacker_name); break;
	        }
        
	        //Create Dialogue
	        Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    }
	    else{
	        Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	        Pan_Battle_Cutscene("Return_To_Attacker");
	    }
	}
	//===============
	//Counter Attack=
	//===============
	else if(state = "Counter_Attack"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    target = _attacker.counter_target;
	    //state = 'Perform_Animation';
	    action = "Melee_Attack";
    
	    if(_attacker.on_screen){
	        state = "Perform_Animation";
	        if(Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power") != "none"){//If word of power
	            effect = Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power");
	            effect_level = Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power_Level");
	            action = "Word_of_Power";
	        }
	        else if(Find_Distance(attacker.x,attacker.y,target.x,target.y)>1){//if target is far, ranged attack
	            action = "Ranged_Attack";
	        }
        
	        switch(action){
	            case "Melee_Attack": case "Ranged_Attack":
	                allow_blocking = true;
	            break;
	            case "Cast_Spell": case "Use_Item": case "Word_of_Power":
	                allow_blocking = false;
	            break;
	        }
        
	        Generate_Battle_Cutscene_AoE();
	        target_index = number_of_targets-1;
	        target = target_array[target_index];
        
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Counter_Attack", Get_Character_Name("Local",attacker,"Total")),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	        _attacker.counter_target = noone;
	    }
	    else{
	        Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	        Pan_Battle_Cutscene("To_Attacker");
	    }
	}
	//============
	//Death Event=
	//============
	else if(state = "Death_Event"){
	    var _attacker = Get_Battle_Cutscene_Character(attacker);
	    //target = _attacker.counter_target;
	    //state = 'Perform_Animation';
	    //action = 'Melee_Attack';
    
	    if(_attacker.on_screen){
	        _attacker.played_death_event = true;
	        state = "Perform_Animation";
	        target = attacker;
	        if(Character_Performs_Special_Attack(attacker)){
	            Get_Special_Attack_Action(Get_Character_Special_Attack_Type("Local",attacker,"Total"));
	        }
	        allow_counter_attacks = false;
	        allow_multiple_attacks = false;
            
	        Generate_Battle_Cutscene_AoE();
	        if(number_of_targets != 0){
	            target_index = number_of_targets-1;
	            target = target_array[target_index];
	        }
	        else{
	            target = attacker;
	        }
        
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Burst_Rock_Exploded"),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    }
	    else{
	        Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	        Pan_Battle_Cutscene("To_Attacker");
	    }
	}
	//=================
	//Grant Experience=
	//=================
	else if(state = "Finish_Attack_Animation"){
	    var _new_target = noone;
	    previous_target = target;
	    previous_attacker = attacker;
    
	    with(obj_Battle_Cutscene_Character){//Loop through all characters, see who gained xp
	        if((experience_gained > 0)&&(!Character_Is_Dead("Local",character))){//if they gained xp and arent dead
	            if(character.can_gain_xp){//if this character can gain experience
	                _new_target = character;//remember character
	                break;
	            }
	            else{//they cant gain xp, check if they're a summon
	                if(character.is_summon){//If they're a summon
	                    if(instance_exists(character.master_summoner)){//If their summoner exists
	                        if(character.master_summoner.can_gain_xp && !Character_Is_Dead("Local",character.master_summoner)){//If their summoner can gain xp and wasnt killed
	                            var _summoner = Get_Battle_Cutscene_Character(character.master_summoner);
	                            _summoner.experience_gained = experience_gained;//give xp to summoner
	                            _summoner.highest_z_value = highest_z_value;//Set Z value
	                            experience_gained = 0;//remove our xp
	                            _new_target = _summoner.character;
	                            break;
	                        }
	                        else{
	                            experience_gained = 0;//remove our xp
	                        }
	                    }
	                    else{
	                        experience_gained = 0;//remove our xp
	                    }
	                }
	                else{
	                    experience_gained = 0;//remove our xp
	                }
	            }
	        }
	    }
    
	    if(_new_target != noone){//if someone gained xp
	        attacker = _new_target;
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
        
	        if(_attacker.on_screen){//if they're on screen
	            Finalize_Experience(_attacker);
	            var _message = Get_General_Messages("Battle_Cutscene","Gains_XP", Get_Character_Name("Local",attacker,"Total"),string(_attacker.experience_gained));
	            if(_attacker.gold_earned > 0){
	                _message += Get_General_Messages("Battle_Cutscene","Found_Gold", string(_attacker.gold_earned));
	                Give_Gold(_attacker.gold_earned);
	                _attacker.gold_earned = 0;
	            }
	            Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	            Set_Character_Experience("Local",_attacker.character,"Add",_attacker.experience_gained);
	            _attacker.experience_gained = 0;
	            if(Character_Leveled_Up("Local",attacker)){
	                state = "Level_Up";
	            }
	        }
	        else{
	            Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	            Pan_Battle_Cutscene("Return_To_Attacker");
	        }
	    }
	    else{
	        var _criteria = 0;
	        if((!Get_Battle_Cutscene_Character(original_attacker).on_screen) && !Character_Is_Dead("Local",original_attacker)){//if original attacker isnt dead and not on screen
	            attacker = original_attacker;
	            _criteria += 1;
	            Pan_Battle_Cutscene("Return_To_Attacker");//Pan back to them before ending the battle cutscene
	        }
	        state = "End_Cutscene";
	        Set_Battle_Cutscene_Event_Criteria(_criteria,10);//counter,delay
	    }
	}
	//=========
	//Level Up=
	//=========
	else if(state = "Level_Up"){
	    if(Character_Leveled_Up("Local",attacker)){
	        Play_Sound(sfx_Level_Up);
	        Create_Dialogue(noone,noone,Level_Up("Local",attacker,false),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    }
	    else{
	        state = "Finish_Attack_Animation";
	        event_perform(ev_other,ev_user0);
	    }
	}
	//=============
	//End Cutscene=
	//=============
	else if(state = "End_Cutscene"){
	    state = "End_Battle_Cutscene";
	    Create_Screen_Fade(c_black,0,1,.04,"out",id);//color, start, end, speed, direction, object
	}
	//====================
	//End Battle Cutscene=
	//====================
	else if(state = "End_Battle_Cutscene"){
	    instance_destroy(obj_Battle_Cutscene_Character);//Characters
	    instance_destroy(obj_Battle_Cutscene_Weapon);//Weapons
	    instance_destroy(obj_Battle_Cutscene_Prop);//Props (Spells)
	    instance_destroy(obj_Placeholder);//Empty tile targeting thingy
    
	    display = false;
	    state = "End_2";
	    Continue_Screen_Fade(0,.04,"in",id);//end, speed, direction, object
	}
	//===================
	//Destroy Controller=
	//===================
	else if(state = "End_2"){
	    instance_destroy(obj_Screen_Fade_Controller);
	    Execute_Battle_Event("End_Turn");//end their turn
	    instance_destroy();
	}



}
