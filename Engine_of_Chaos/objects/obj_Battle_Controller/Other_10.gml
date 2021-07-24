//==================
//Pan In Battle HUD=
//==================
if(event = "Start_Turn"){//Cursor End of Path
    Set_Camera_Target(Get_Current_Turn());//camera follows active object
    if(Object_Is_Character(Get_Current_Turn())){//if object is a character
        if(Get_Current_Turn().hidden){//if the character is a hidden unit
            Create_Cutscene_Controller(Get_Current_Turn().reveal_cutscene_ID,"Battle_Cutscene");//cutscene ID, type
        }
        else if(Status_Effect_Prevents_Turn(Get_Current_Turn())){//if character is sleeping/stunned/petrified/paralyzed/etc
            Execute_Battle_Event("End_Turn");//end their turn
        }
        else{//character is not a hidden unit, bring in battle HUD
            Create_Battle_HUD(id,Get_Current_Turn(),"Start_Character_Turn","Main_HUD");//create the battle HUD
        }
    }
    else if(Object_Is_Spawner(Get_Current_Turn())){//if object is a mob-spawner
        Create_Cutscene_Controller(Get_Current_Turn().spawn_cutscene_ID,"Battle_Cutscene");//cutscene ID, type
    }
}
//==========================
//Enable Character Movement=
//==========================
else if(event = "Start_Character_Turn"){
    Start_Character_Turn(Get_Current_Turn());
}
//======================
//Character ended turn =
//======================
else if(event = "End_Turn"){
    if(snap_cursor_to_character){
        obj_Cursor.x = Get_Current_Turn().x;
        obj_Cursor.y = Get_Current_Turn().y;
    }
    else{
        snap_cursor_to_character = true;
    }
    if(Object_Is_Character(Get_Current_Turn())){//if object is a character
        Create_Cutscene_Controller("Status_Effects_Battle","Battle_Cutscene",0,Get_Current_Turn());//character ended turn, update status effects
    }
    else{//object isnt a character, skip this event
        Execute_Battle_Event("Start_Death_Animation");
    }
}
//=======================
//Start Death Animation =
//=======================
else if(event = "Start_Death_Animation"){
    var _death = false;
    //var _new_deaths = true; 
    
    with(obj_Character){//loop through all characters
        //Save_Character_Stats(id);
        if(Character_Is_Dead("Local",id)||(is_summon && (summoned_turns_remaining = 0))){//if they are dead (HP = 0) or they're a summon that is out of turns
            Set_Death_Flag(id);
            _death = true;//someone has died
        }
    }
    
    if(!_death){//if no one died
        Execute_Battle_Event("Start_New_Turn");//start the next character's turn
    }
    else{//otherwise, play death animation
        Start_Battle_Death_Cutscene("Start_Death_Animation");//play death animation
    }
}
//=====================
//End Death Animation =
//=====================
else if(event = "End_Death_Animation"){//death animation has finished playing. Delete the characters
    var _death = false;
    with(obj_Character){
        if(death_flag){
            _death = true;
        }
    }
    if(_death){
        Start_Battle_Death_Cutscene("End_Death_Animation");//play death animation
    }
    else{
        Execute_Battle_Event("Start_New_Turn");
    }
}
//=======================
//Select Next Character =
//=======================
else if(event = "Start_New_Turn"){
    if(!End_Battle()){//Check if the battle ends (due to victory or failure)
        //if we force a hidden unit to spawn
        var _new_addition = false;
        if(!skip_hidden_reveal){
            var i = 0;
            for(i = 0; i < obj_Battle_Controller.number_of_hidden_units; i+= 1){//loop through hidden units
                if(Can_Reveal_Hidden_Character(obj_Battle_Controller.hidden_units[i])){//if we can reveal them,
                    Add_To_Turn_Order(obj_Battle_Controller.hidden_units[i],obj_Battle_Controller.current_turn+1);
                    _new_addition = true;//added new unit to turn order
                    break;//break if we're revealing a unit (otherwise the next character will get duped)
                }
            }
        }
        if(!_new_addition){//if we havent added a new character to turn order
            with(obj_Enemy_Spawner){//loop through all spawners
                if(Can_Spawn_Character(id)){//if we can spawn a character
                    Add_To_Turn_Order(id,obj_Battle_Controller.current_turn+1);
                    break;
                }
            }
        }
        skip_hidden_reveal = false;//reset hidden reveal
        
        Ready_Cursor_For_Movement();//show cursor and update start position
        Increment_Turn();//update turn order
        if(round_start){//Start of round trigger
            round_start = false;
        }
        
        if(!End_Battle()){//re-check end conditions in case "number of rounds" triggers it       
            Move_Cursor_To_Target(Get_Current_Turn(),"Start_Turn");//move to next object
        }
    }
}
//=============================
//Allow Player to move cursor =
//=============================
else if(event = "Enable_Cursor_Movement"){
    Ready_Cursor_For_Movement(Get_Current_Turn().x,Get_Current_Turn().y);//show cursor and update start position
    obj_Cursor.allow_interaction = true;//allow player interaction
}

