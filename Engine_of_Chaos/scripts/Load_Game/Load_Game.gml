function Load_Game() {
	//==============================
	//Save Game Script File Creation
	//==============================
	var i,j;
	var _file_name = ("Save_Slot_"+string(global.Save_Slot)+".sav");//Name of the file (Save_Slot_X.sav)
	ini_open(_file_name);//Create save file

	//============
	//General Data
	//============
	global.Perma_Death = ini_read_real("General_Data","Perma_Death",global.Perma_Death);//Perma death
	global.Difficulty = ini_read_string("General_Data","Difficulty",global.Difficulty);//Difficulty
	global.Story_State = ini_read_real("General_Data","Story_State",global.Story_State);//Story State
	global.Gold = ini_read_real("General_Data","Gold",global.Gold);//Gold
	global.Player_ID = ini_read_string("Player_Data","Character_ID",global.Player_ID);//Player ID

	//===========
	//Story Flags
	//===========
	for(i = 0; i < global.Number_Of_Chapters; i += 1){//Loop through all chapters
	    for(j = 0; j < global.Number_Of_Chapter_Flags; j += 1){//Loop through all chapter Flags
	        global.Story_Flags[i,j] = ini_read_string("Chapter_"+string(i+1),"Flag_"+string(j),global.Story_Flags[i,j]);//Save story flags
	    }
	}

	//==========
	//Shop Stock
	//==========
	for(i = 0; i < global.Number_Of_Quantity_Shops; i += 1){//Loop through all shops
	    global.Quantity_Shop_Size[i] = ini_read_real("Quantity_Shop_"+string(i),"Shop_Size",global.Quantity_Shop_Size[i]);//read size to file
	    for(j = 0; j < global.Quantity_Shop_Size[i]; j += 1){//Loop through shop stock
	        global.Quantity_Shop_Stock[i,j] = ini_read_string("Quantity_Shop_"+string(i),"Shop_Inventory",global.Quantity_Shop_Stock[i,j]);//read items to file
	    }
	}

	//==========
	//Chest Data
	//==========
	for (i = 0; i < global.Number_Of_Chests; i+= 1){//Loop through all chests
	    global.Chest_Looted[i] = ini_read_real("Chest_Data","Chest_"+string(i),global.Chest_Looted[i]);//Save chest state
	}


	//==============
	//Character Data
	//==============
	for (i = 0; i < global.Number_Of_Characters; i+= 1){
	    global.character_ID[i] = ini_read_string("Character_"+string(i),"Character_ID",global.character_ID[i]);
	    global.Name[i] = ini_read_string("Character_"+string(i),"Name",global.Name[i]);
	    global.Level[i] = ini_read_real("Character_"+string(i),"Level",global.Level[i]);
	    global.Level_Scheme[i] = ini_read_string("Character_"+string(i),"Level_Scheme",global.Level_Scheme[i]);
	    global.Experience[i] = ini_read_real("Character_"+string(i),"Experience",global.Experience[i]);
    
	    global.Attack[i] = ini_read_real("Character_"+string(i),"Attack",global.Attack[i]);
	    global.Defense[i] = ini_read_real("Character_"+string(i),"Defense",global.Defense[i]);
	    global.Agility[i] = ini_read_real("Character_"+string(i),"Agility",global.Agility[i]);
	    global.Max_Health[i] = ini_read_real("Character_"+string(i),"Max_Health",global.Max_Health[i]);
	    global.Max_Magic[i] = ini_read_real("Character_"+string(i),"Max_Magic",global.Max_Magic[i]);
	    global.Current_Health[i] = ini_read_real("Character_"+string(i),"Current_Health",global.Current_Health[i]);
	    global.Current_Magic[i] = ini_read_real("Character_"+string(i),"Current_Magic",global.Current_Magic[i]);
    
	    global.Movement_Range[i] = ini_read_real("Character_"+string(i),"Movement_Range",global.Movement_Range[i]);
	    global.Movement_Type[i] = ini_read_string("Character_"+string(i),"Movement_Type",global.Movement_Type[i]);
    
	    global.Accuracy[i] = ini_read_real("Character_"+string(i),"Accuracy",global.Accuracy[i]);
	    global.Evasion[i] = ini_read_real("Character_"+string(i),"Evasion",global.Evasion[i]);
	    global.Crit[i] = ini_read_real("Character_"+string(i),"Crit",global.Crit[i]);
	    global.Counter[i] = ini_read_real("Character_"+string(i),"Counter",global.Counter[i]);
	    global.Multi_Strike[i] = ini_read_real("Character_"+string(i),"Multi_Strike",global.Multi_Strike[i]);
	    global.Special_Attack[i] = ini_read_real("Character_"+string(i),"Special_Attack",global.Special_Attack[i]);
	    global.Special_Attack_Type[i] = ini_read_string("Character_"+string(i),"Special_Attack_Type",global.Special_Attack_Type[i]);
    
	    global.Max_Attack_Range[i] = ini_read_real("Character_"+string(i),"Max_Attack_Range",global.Max_Attack_Range[i]);
	    global.Min_Attack_Range[i] = ini_read_real("Character_"+string(i),"Min_Attack_Range",global.Min_Attack_Range[i]);
	    global.Attack_Size[i] = ini_read_real("Character_"+string(i),"Attack_Size",global.Attack_Size[i]);
	    global.Attack_Pattern[i] = ini_read_string("Character_"+string(i),"Attack_Pattern",global.Attack_Pattern[i]);
	    global.Attack_Range_Type[i] = ini_read_string("Character_"+string(i),"Attack_Range_Type",global.Attack_Range_Type[i]);
	    global.Attack_Target_Type[i] = ini_read_string("Character_"+string(i),"Attack_Target_Type",global.Attack_Target_Type[i]);
	    global.Attack_Select_Type[i] = ini_read_string("Character_"+string(i),"Attack_Select_Type",global.Attack_Select_Type[i]);
	    global.Turns[i] = ini_read_real("Character_"+string(i),"Turns",global.Turns[i]);
    
	    global.Faction[i] = ini_read_string("Character_"+string(i),"Faction",global.Faction[i]);
	    global.In_Battle_Party[i] = ini_read_real("Character_"+string(i),"In_Battle_Party",global.In_Battle_Party[i]);
	    global.Can_Leave_Battle_Party[i] = ini_read_real("Character_"+string(i),"Can_Leave_Battle_Party",global.Can_Leave_Battle_Party[i]);
    
	    global.Kills[i] = ini_read_real("Character_"+string(i),"Kills",global.Kills[i]);
	    global.Deaths[i] = ini_read_real("Character_"+string(i),"Deaths",global.Deaths[i]);
    
	    for(j = 0; j < global.Number_Of_Spell_Slots; j += 1){//loop through spell slots
	        global.Spells[i,j] = ini_read_string("Character_"+string(i),"Spell_"+string(j),global.Spells[i,j]);//Spell
	        global.Spell_Level[i,j] = ini_read_real("Character_"+string(i),"Spell_Level_"+string(j),global.Spell_Level[i,j]);//Spell Level
	    }
    
	    for(j = 0; j < global.Number_Of_Inventory_Slots; j += 1){//Loop through items
	        global.Items[i,j] = ini_read_string("Character_"+string(i),"Item_"+string(j),global.Items[i,j]);//item
	    }
    
	    for(j = 0; j < global.Number_Of_Equipment_Slots; j += 1){//loop through equipment
	        global.Equipment[i,j] = ini_read_real("Character_"+string(i),"Equipment_"+string(j),global.Equipment[i,j]);//equipment slot
	    }
    
	    global.Fire_Damage[i] = ini_read_real("Character_"+string(i),"Fire_Damage",global.Fire_Damage[i]);
	    global.Ice_Damage[i] = ini_read_real("Character_"+string(i),"Ice_Damage",global.Ice_Damage[i]);
	    global.Water_Damage[i] = ini_read_real("Character_"+string(i),"Water_Damage",global.Water_Damage[i]);
	    global.Lightning_Damage[i] = ini_read_real("Character_"+string(i),"Lightning_Damage",global.Lightning_Damage[i]);
	    global.Wind_Damage[i] = ini_read_real("Character_"+string(i),"Wind_Damage",global.Wind_Damage[i]);
	    global.Earth_Damage[i] = ini_read_real("Character_"+string(i),"Earth_Damage",global.Earth_Damage[i]);
	    global.Light_Damage[i] = ini_read_real("Character_"+string(i),"Light_Damage",global.Light_Damage[i]);
	    global.Shadow_Damage[i] = ini_read_real("Character_"+string(i),"Shadow_Damage",global.Shadow_Damage[i]);
	    global.Magic_Damage[i] = ini_read_real("Character_"+string(i),"Magic_Damage",global.Magic_Damage[i]);
	    global.Void_Damage[i] = ini_read_real("Character_"+string(i),"Void_Damage",global.Void_Damage[i]);
    
	    global.Fire_Resistance[i] = ini_read_real("Character_"+string(i),"Fire_Resistance",global.Fire_Resistance[i]);
	    global.Ice_Resistance[i] = ini_read_real("Character_"+string(i),"Ice_Resistance",global.Ice_Resistance[i]);
	    global.Water_Resistance[i] = ini_read_real("Character_"+string(i),"Water_Resistance",global.Water_Resistance[i]);
	    global.Lightning_Resistance[i] = ini_read_real("Character_"+string(i),"Lightning_Resistance",global.Lightning_Resistance[i]);
	    global.Wind_Resistance[i] = ini_read_real("Character_"+string(i),"Wind_Resistance",global.Wind_Resistance[i]);
	    global.Earth_Resistance[i] = ini_read_real("Character_"+string(i),"Earth_Resistance",global.Earth_Resistance[i]);
	    global.Light_Resistance[i] = ini_read_real("Character_"+string(i),"Light_Resistance",global.Light_Resistance[i]);
	    global.Shadow_Resistance[i] = ini_read_real("Character_"+string(i),"Shadow_Resistance",global.Shadow_Resistance[i]);
	    global.Magic_Resistance[i] = ini_read_real("Character_"+string(i),"Magic_Resistance",global.Magic_Resistance[i]);
    
    
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
	                case 0: global.Attack_Up[i,j] = ini_read_real("Character_"+string(i),"Attack_Up"+_stat,global.Attack_Up[i,j]); break;
	                case 1: global.Defense_Up[i,j] = ini_read_real("Character_"+string(i),"Defense_Up"+_stat,global.Defense_Up[i,j]); break;
	                case 2: global.Agility_Up[i,j] = ini_read_real("Character_"+string(i),"Agility_Up"+_stat,global.Agility_Up[i,j]); break;
	                case 3: global.Movement_Up[i,j] = ini_read_real("Character_"+string(i),"Movement_Up"+_stat,global.Movement_Up[i,j]); break;
	                case 4: global.Attack_Down[i,j] = ini_read_real("Character_"+string(i),"Attack_Down"+_stat,global.Attack_Down[i,j]); break;
	                case 5: global.Defense_Down[i,j] = ini_read_real("Character_"+string(i),"Defense_Down"+_stat,global.Defense_Down[i,j]); break;
	                case 6: global.Agility_Down[i,j] = ini_read_real("Character_"+string(i),"Agility_Down"+_stat,global.Agility_Down[i,j]); break;
	                case 7: global.Movement_Down[i,j] = ini_read_real("Character_"+string(i),"Movement_Down"+_stat,global.Movement_Down[i,j]); break;
	                case 8: global.Flight[i,j] = ini_read_real("Character_"+string(i),"Flight"+_stat,global.Flight[i,j]); break;
	                case 9: global.Poison[i,j] = ini_read_real("Character_"+string(i),"Poison"+_stat,global.Poison[i,j]); break;
	                case 10: global.Paralysis[i,j] = ini_read_real("Character_"+string(i),"Paralysis"+_stat,global.Paralysis[i,j]); break;
	                case 11: global.Silence[i,j] = ini_read_real("Character_"+string(i),"Silence"+_stat,global.Silence[i,j]); break;
	                case 12: global.Sleep[i,j] = ini_read_real("Character_"+string(i),"Sleep"+_stat,global.Sleep[i,j]); break;
	                case 13: global.Stun[i,j] = ini_read_real("Character_"+string(i),"Stun"+_stat,global.Stun[i,j]); break;
	                case 14: global.Petrify[i,j] = ini_read_real("Character_"+string(i),"Petrify"+_stat,global.Petrify[i,j]); break;
	                case 15: global.Bleed[i,j] = ini_read_real("Character_"+string(i),"Bleed"+_stat,global.Bleed[i,j]); break;
	                case 16: global.Magic_Immunity[i,j] = ini_read_real("Character_"+string(i),"Magic_Immunity"+_stat,global.Magic_Immunity[i,j]); break;
	                case 17: global.Snare[i,j] = ini_read_real("Character_"+string(i),"Snare"+_stat,global.Snare[i,j]); break;
	                case 18: global.Confusion[i,j] = ini_read_real("Character_"+string(i),"Confusion"+_stat,global.Confusion[i,j]); break;
	                case 19: global.Berserk[i,j] = ini_read_real("Character_"+string(i),"Berserk"+_stat,global.Berserk[i,j]); break;
	                case 20: global.Curse_Suppression[i,j] = ini_read_real("Character_"+string(i),"Curse_Suppression"+_stat,global.Curse_Suppression[i,j]); break;
	            }
	        }
	    }
	}

	ini_close();
}