function Save_Game(_trigger) {
	//==============================
	//Save Game Script File Creation
	//==============================
	var i,j;
	var _file_name = ("Save_Slot_"+string(global.Save_Slot)+".sav");//Name of the file (Save_Slot_X.sav)
	ini_open(_file_name);//Create save file

	//=======
	//Utility
	//=======
	ini_write_string("Utility","Version",global.Version);//Save File version

	//============
	//General Data
	//============
	ini_write_real("General_Data","Perma_Death",global.Perma_Death);//Perma death
	ini_write_string("General_Data","Difficulty",global.Difficulty);//Difficulty
	ini_write_real("General_Data","Story_State",global.Story_State);//Story State
	ini_write_real("General_Data","Gold",global.Gold);//Gold
	//ini_write_string("General_Data","Player_ID",global.Player_ID);//Player ID

	//===========
	//Player Data
	//===========
	if(_trigger = "Church"){//if we force a save via challenges, or end of chapter, dont save character info (as they wont exist and you dont want to overwrite them)

		ini_write_string("Player_Data","Character_ID",global.Player.character_ID);
	    ini_write_real("Player_Data","X",global.Player.x);
	    ini_write_real("Player_Data","Y",global.Player.y);
	    ini_write_real("Player_Data","Direction",global.Player.direction);

	    ini_write_string("Player_Data","Room",room_get_name(room));
	}

	//===========
	//Story Flags
	//===========
	for(i = 0; i < global.Number_Of_Chapters; i += 1){//Loop through all chapters
	    for(j = 0; j < global.Number_Of_Chapter_Flags; j += 1){//Loop through all chapter Flags
	        ini_write_string("Chapter_"+string(i+1),"Flag_"+string(j),global.Story_Flags[i,j]);//Save story flags
	    }
	}

	//==========
	//Shop Stock
	//==========
	for(i = 0; i < global.Number_Of_Quantity_Shops; i += 1){//Loop through all shops
	    ini_write_real("Quantity_Shop_"+string(i),"Shop_Size",global.Quantity_Shop_Size[i]);//write size to file
	    for(j = 0; j < global.Quantity_Shop_Size[i]; j += 1){//Loop through shop stock
	        ini_write_string("Quantity_Shop_"+string(i),"Shop_Inventory",global.Quantity_Shop_Stock[i,j]);//write items to file
	    }
	}

	//==========
	//Chest Data
	//==========
	for (i = 0; i < global.Number_Of_Chests; i+= 1){//Loop through all chests
	    ini_write_real("Chest_Data","Chest_"+string(i),global.Chest_Looted[i]);//Save chest state
	}


	//==============
	//Character Data
	//==============
	for (i = 0; i < global.Number_Of_Characters; i+= 1){
	    ini_write_string("Character_"+string(i),"Character_ID",global.character_ID[i]);
	    ini_write_string("Character_"+string(i),"Name",global.Name[i]);
	    ini_write_real("Character_"+string(i),"Level",global.Level[i]);
	    ini_write_string("Character_"+string(i),"Level_Scheme",global.Level_Scheme[i]);
	    ini_write_real("Character_"+string(i),"Experience",global.Experience[i]);
    
	    ini_write_real("Character_"+string(i),"Attack",global.Attack[i]);
	    ini_write_real("Character_"+string(i),"Defense",global.Defense[i]);
	    ini_write_real("Character_"+string(i),"Agility",global.Agility[i]);
	    ini_write_real("Character_"+string(i),"Max_Health",global.Max_Health[i]);
	    ini_write_real("Character_"+string(i),"Max_Magic",global.Max_Magic[i]);
	    ini_write_real("Character_"+string(i),"Current_Health",global.Current_Health[i]);
	    ini_write_real("Character_"+string(i),"Current_Magic",global.Current_Magic[i]);
    
	    ini_write_real("Character_"+string(i),"Movement_Range",global.Movement_Range[i]);
	    ini_write_string("Character_"+string(i),"Movement_Type",global.Movement_Type[i]);
    
	    ini_write_real("Character_"+string(i),"Accuracy",global.Accuracy[i]);
	    ini_write_real("Character_"+string(i),"Evasion",global.Evasion[i]);
	    ini_write_real("Character_"+string(i),"Crit",global.Crit[i]);
	    ini_write_real("Character_"+string(i),"Counter",global.Counter[i]);
	    ini_write_real("Character_"+string(i),"Multi_Strike",global.Multi_Strike[i]);
	    ini_write_real("Character_"+string(i),"Special_Attack",global.Special_Attack[i]);
	    ini_write_string("Character_"+string(i),"Special_Attack_Type",global.Special_Attack_Type[i]);
    
	    ini_write_real("Character_"+string(i),"Max_Attack_Range",global.Max_Attack_Range[i]);
	    ini_write_real("Character_"+string(i),"Min_Attack_Range",global.Min_Attack_Range[i]);
	    ini_write_real("Character_"+string(i),"Attack_Size",global.Attack_Size[i]);
	    ini_write_string("Character_"+string(i),"Attack_Pattern",global.Attack_Pattern[i]);
	    ini_write_string("Character_"+string(i),"Attack_Range_Type",global.Attack_Range_Type[i]);
	    ini_write_string("Character_"+string(i),"Attack_Target_Type",global.Attack_Target_Type[i]);
	    ini_write_string("Character_"+string(i),"Attack_Select_Type",global.Attack_Select_Type[i]);
	    ini_write_real("Character_"+string(i),"Turns",global.Turns[i]);
    
	    ini_write_string("Character_"+string(i),"Faction",global.Faction[i]);
	    ini_write_real("Character_"+string(i),"In_Battle_Party",global.In_Battle_Party[i]);
	    ini_write_real("Character_"+string(i),"Can_Leave_Battle_Party",global.Can_Leave_Battle_Party[i]);
    
	    ini_write_real("Character_"+string(i),"Kills",global.Kills[i]);
	    ini_write_real("Character_"+string(i),"Deaths",global.Deaths[i]);

	    for(j = 0; j < global.Number_Of_Spell_Slots; j += 1){//loop through spell slots
	        ini_write_string("Character_"+string(i),"Spell_"+string(j),global.Spells[i,j]);//Spell
	        ini_write_real("Character_"+string(i),"Spell_Level_"+string(j),global.Spell_Level[i,j]);//Spell Level
	    }
    
	    for(j = 0; j < global.Number_Of_Inventory_Slots; j += 1){//Loop through items
	        ini_write_string("Character_"+string(i),"Item_"+string(j),global.Items[i,j]);//item
	    }
    
	    for(j = 0; j < global.Number_Of_Equipment_Slots; j += 1){//loop through equipment
	        ini_write_real("Character_"+string(i),"Equipment_"+string(j),global.Equipment[i,j]);//equipment slot
	    }
    
	    ini_write_real("Character_"+string(i),"Fire_Damage",global.Fire_Damage[i]);
	    ini_write_real("Character_"+string(i),"Ice_Damage",global.Ice_Damage[i]);
	    ini_write_real("Character_"+string(i),"Water_Damage",global.Water_Damage[i]);
	    ini_write_real("Character_"+string(i),"Lightning_Damage",global.Lightning_Damage[i]);
	    ini_write_real("Character_"+string(i),"Wind_Damage",global.Wind_Damage[i]);
	    ini_write_real("Character_"+string(i),"Earth_Damage",global.Earth_Damage[i]);
	    ini_write_real("Character_"+string(i),"Light_Damage",global.Light_Damage[i]);
	    ini_write_real("Character_"+string(i),"Shadow_Damage",global.Shadow_Damage[i]);
	    ini_write_real("Character_"+string(i),"Magic_Damage",global.Magic_Damage[i]);
	    ini_write_real("Character_"+string(i),"Void_Damage",global.Void_Damage[i]);
    
	    ini_write_real("Character_"+string(i),"Fire_Resistance",global.Fire_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Ice_Resistance",global.Ice_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Water_Resistance",global.Water_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Lightning_Resistance",global.Lightning_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Wind_Resistance",global.Wind_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Earth_Resistance",global.Earth_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Light_Resistance",global.Light_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Shadow_Resistance",global.Shadow_Resistance[i]);
	    ini_write_real("Character_"+string(i),"Magic_Resistance",global.Magic_Resistance[i]);
    
    
	    var _number_of_effects = 21;
	    var _stat;
	    var k;
	    for(k = 0; k < _number_of_effects; k += 1){//loop through all effects
	        for(j = 0; j < 6; j += 1){//loop through all stats
	            switch(j){
	                case 0: _stat = "_Potency"; break;
	                case 1: _stat = "_Turns_Remaining"; break;
	                case 2: _stat = "_Resistance"; break;
	                case 3: _stat = "_Infliction_Chance"; break;
	                case 4: _stat = "_Infliction_Potency"; break;
	                case 5: _stat = "_Infliction_Turns_Remaining"; break;
	            }
	            switch(k){
	                case 0: ini_write_real("Character_"+string(i),"Attack_Up"+_stat,global.Attack_Up[i,j]); break;
	                case 1: ini_write_real("Character_"+string(i),"Defense_Up"+_stat,global.Defense_Up[i,j]); break;
	                case 2: ini_write_real("Character_"+string(i),"Agility_Up"+_stat,global.Agility_Up[i,j]); break;
	                case 3: ini_write_real("Character_"+string(i),"Movement_Up"+_stat,global.Movement_Up[i,j]); break;
	                case 4: ini_write_real("Character_"+string(i),"Attack_Down"+_stat,global.Attack_Down[i,j]); break;
	                case 5: ini_write_real("Character_"+string(i),"Defense_Down"+_stat,global.Defense_Down[i,j]); break;
	                case 6: ini_write_real("Character_"+string(i),"Agility_Down"+_stat,global.Agility_Down[i,j]); break;
	                case 7: ini_write_real("Character_"+string(i),"Movement_Down"+_stat,global.Movement_Down[i,j]); break;
	                case 8: ini_write_real("Character_"+string(i),"Flight"+_stat,global.Flight[i,j]); break;
	                case 9: ini_write_real("Character_"+string(i),"Poison"+_stat,global.Poison[i,j]); break;
	                case 10: ini_write_real("Character_"+string(i),"Paralysis"+_stat,global.Paralysis[i,j]); break;
	                case 11: ini_write_real("Character_"+string(i),"Silence"+_stat,global.Silence[i,j]); break;
	                case 12: ini_write_real("Character_"+string(i),"Sleep"+_stat,global.Sleep[i,j]); break;
	                case 13: ini_write_real("Character_"+string(i),"Stun"+_stat,global.Stun[i,j]); break;
	                case 14: ini_write_real("Character_"+string(i),"Petrify"+_stat,global.Petrify[i,j]); break;
	                case 15: ini_write_real("Character_"+string(i),"Bleed"+_stat,global.Bleed[i,j]); break;
	                case 16: ini_write_real("Character_"+string(i),"Magic_Immunity"+_stat,global.Magic_Immunity[i,j]); break;
	                case 17: ini_write_real("Character_"+string(i),"Snare"+_stat,global.Snare[i,j]); break;
	                case 18: ini_write_real("Character_"+string(i),"Confusion"+_stat,global.Confusion[i,j]); break;
	                case 19: ini_write_real("Character_"+string(i),"Berserk"+_stat,global.Berserk[i,j]); break;
	                case 20: ini_write_real("Character_"+string(i),"Curse_Suppression"+_stat,global.Curse_Suppression[i,j]); break;
	            }
	        }
	    }
	}
	ini_close();
}