function Set_Character_Stats() {
	var _character;
	_character = argument[0];

	if(argument_count > 1){
	    _character.character_ID = argument[1];
	}

	with(_character){
	    switch(_character.character_ID){
	    //===============
	    //=PARTY MEMBERS=
	    //===============
	        //case 'Noah': Set_Town_Party_Member_Stats(0); break;//argument: array index
	        case "Jason": Set_Town_Party_Member_Stats(0); can_trigger_room_transition = true; death_flag_script = "Important_Character_0"; break;//argument: array index
	        case "Max": Set_Town_Party_Member_Stats(1); break;//argument: array index
	        case "Ciera": Set_Town_Party_Member_Stats(2); break;//argument: array index
	        case "Kira": Set_Town_Party_Member_Stats(3); break;//argument: array index
	        case "Karina": Set_Town_Party_Member_Stats(4); break;//argument: array index
	        case "Phillip": Set_Town_Party_Member_Stats(5); break;//argument: array index
	    //========
	    //ENEMIES=
	    //========
	        case "Wolf": Set_Enemy_Wolf_Stats(_character); break;
	        case "Alpha_Wolf": Set_Enemy_Alpha_Wolf_Stats(_character); death_flag_script = "Important_Character_1"; break;
	        case "Bandit": Set_Enemy_Bandit_Stats(_character); break;
	        case "Bandit_Archer": Set_Enemy_Bandit_Archer_Stats(_character); break;
	        case "Forest_Serpent": Set_Enemy_Forest_Serpent_Stats(_character); break;
	        case "Bat": Set_Enemy_Bat_Stats(_character); break;
        
	        case "Prism_Flower": Set_Enemy_Prism_Flower_Stats(_character); break;
	        case "Burst_Rock": Set_Enemy_Burst_Rock_Stats(_character); break;
	    //========
	    //SUMMONS=
	    //========
	        case "Wolf_Summon": Set_Wolf_Summon_Stats(_character); break;
        
	    //======
	    //=NPCs=
	    //======
	        case "Chaos":
	            name = "Chaos";//Name
	            overworld_sprite_ID = "Chaos";//Overworld Sprite
	            portrait_ID = "Chaos";//Portrait Sprite
	            voice_ID = "Chaos";//Character Voice
	        break;
	        case "Astral":
	            name = "Sir Astral";//Name
	            overworld_sprite_ID = "Astral";//Overworld Sprite
	            portrait_ID = "Astral";//Portrait Sprite
	            voice_ID = "Astral";//Character Voice
	        break;
	        case "Jamie":
	            name = "Jamie";//Name
	            overworld_sprite_ID = "Jamie";//Overworld Sprite
	            portrait_ID = "Jamie";//Portrait Sprite
	            voice_ID = "Jamie";//Character Voice
	        break;
	        //Ashenwood NPCs
	        case "Jasons_Mom": Set_Town_NPC_Stats(_character,"","Jasons_Mom","none","Jasons_Mom","Jasons_Mom",2); break;//character, name, sprite, portrait, voice, dialogue, wander radius
	        case "Jasons_Dad": Set_Town_NPC_Stats(_character,"","Jasons_Dad","none","Male_Mature_2","Jasons_Dad",0); Set_NPC_Direction(_character,"Left",true); break;//character, name, sprite, portrait, voice, dialogue, wander radius
	        case "Jasons_Grandpa": Set_Town_NPC_Stats(_character,"","Jasons_Grandpa","none","Male_Old_2","Jasons_Grandpa",6); break;//character, name, sprite, portrait, voice, dialogue, wander radius
	        case "Cieras_Mom": Set_Town_NPC_Stats(_character,"","Cieras_Mom","none","Female_Mature_1","Cieras_Mom",6); break;
	        case "Cieras_Dad": Set_Town_NPC_Stats(_character,"","Cieras_Dad_Fishing","none","Male_Mature_3","Cieras_Dad",0); Set_NPC_Direction(_character,"Left",true); break;
	        case "Cieras_Middle_Brother": Set_Town_NPC_Stats(_character,"","Cieras_Middle_Brother","none","Male_Mature_2","Cieras_Middle_Brother",6); break;
	        case "Cieras_Older_Brother": Set_Town_NPC_Stats(_character,"","Cieras_Older_Brother","none","Male_Mature_2","Cieras_Older_Brother",0); Set_NPC_Direction(_character,"Left",true); break;
	        case "Maxs_Mom": Set_Town_NPC_Stats(_character,"","Maxs_Mom","none","Female_Mature_1","Maxs_Mom",6); break;
	        case "Ashenwood_Weapon_Vendor": Set_Town_NPC_Stats(_character,"","Ashenwood_Weapon_Vendor","Ashenwood_Weapon_Vendor","Male_Mature_3","Generic_Shopkeeper",0); shop_ID[0] = "Ashenwood_Weapon_Shop"; break;
	        case "Ashenwood_Item_Vendor": Set_Town_NPC_Stats(_character,"","Ashenwood_Item_Vendor","Ashenwood_Item_Vendor","Male_Mature_3","Generic_Shopkeeper",0); shop_ID[0] = "Ashenwood_Item_Shop"; break;
	        case "Granny_Gladys": Set_Town_NPC_Stats(_character,"","Granny_Gladys","none","Female_Old_2","Generic_Advisor",0); other_dialogue_ID = "Granny_Gladys";  Set_NPC_Direction(_character,"Down",true); break;
        
	        case "Muleborne": Set_Town_NPC_Stats(_character,"","Muleborne","none","Male_Old_2","Muleborne",3); break;
	        case "Jess": Set_Town_NPC_Stats(_character,"","Jess","none","Female_Young_1","Jess",6); break;
        
	        case "Ashenwood_Innkeeper": Set_Town_NPC_Stats(_character,"","Ashenwood_Innkeeper","none","Male_Mature_1","Generic_Innkeeper",0); shop_ID[0] = "Ashenwood_Inn_Shop"; Set_NPC_Direction(_character,"Down",true); break;
	        case "Ashenwood_Traveler": Set_Town_NPC_Stats(_character,"","Ashenwood_Traveler","none","Male_Mature_2","Ashenwood_Traveler",0); Set_NPC_Direction(_character,"Up",true); break;
	        case "Ashenwood_Adventurer_1": Set_Town_NPC_Stats(_character,"","Ashenwood_Adventurer_1","none","Male_Mature_1","Ashenwood_Adventurer_1",0); Set_NPC_Direction(_character,"Right",true); break;
	        case "Ashenwood_Adventurer_2": Set_Town_NPC_Stats(_character,"","Ashenwood_Adventurer_2","none","Male_Mature_2","Ashenwood_Adventurer_2",0); Set_NPC_Direction(_character,"Up",true); break;
        
	        case "Ashenwood_Villager_1": Set_Town_NPC_Stats(_character,"","Ashenwood_Villager_1","none","Female_Young_2","Ashenwood_Villager_1",3); break;
	        case "Ashenwood_Villager_2": Set_Town_NPC_Stats(_character,"","Ashenwood_Villager_2","none","Male_Young_1","Ashenwood_Villager_2",0); Set_NPC_Direction(_character,"Left",true); face_player_during_dialogue = false; break;
	        case "Ashenwood_Villager_3": Set_Town_NPC_Stats(_character,"","Ashenwood_Villager_3","none","Female_Young_1","Ashenwood_Villager_3",0); Set_NPC_Direction(_character,"Right",true); face_player_during_dialogue = false; break;
	        case "Ashenwood_Kid_1": Set_Town_NPC_Stats(_character,"","Ashenwood_Kid_1","none","Female_Kid_2","Ashenwood_Kid_1",0); Set_NPC_Direction(_character,"Right",true); break;
	        case "Ashenwood_Kid_2": Set_Town_NPC_Stats(_character,"","Ashenwood_Kid_2","none","Male_Kid_1","Ashenwood_Kid_2",0); Set_NPC_Direction(_character,"Right",true); break;
	        case "Ashenwood_Kid_3": Set_Town_NPC_Stats(_character,"","Ashenwood_Kid_3","none","Female_Kid_1","Ashenwood_Kid_3",0); Set_NPC_Direction(_character,"Left",true); break;
        
	        //Animals
	        case "Cow": Set_Town_NPC_Stats(_character,"Cow","Cow","none","Cow","Cow",6); break;//character, name, sprite, portrait, voice, dialogue, wander radius
	        case "Milkshake": Set_Town_NPC_Stats(_character,"Milkshake","Cow","none","Cow","Cow",99); break;
	        case "Horse": Set_Town_NPC_Stats(_character,"Horse","Horse","none","Horse","none",6); break;
	        case "Dog": Set_Town_NPC_Stats(_character,"Dog","Dog","none","Dog","none",3); break;
	        case "Cat_Orange": Set_Town_NPC_Stats(_character,"Cat_Orange","Cat_Orange","none","Cat","none",3); break;
	        case "Cat_Grey": Set_Town_NPC_Stats(_character,"Cat_Grey","Cat_Grey","none","Cat","none",3); break;

	    //==========
	    //=DEFAULT==
	    //==========
	        default:
	            name = "Nameless NPC";//Name
	            faction = "none";//Faction
	            overworld_sprite_ID = "Default";//Overworld Sprite
	            portrait_ID = "none";//Portrait Sprite
	            voice_ID = "Default";//Character Voice
	        break;
	    }
    
	    //Post stat calculations (For Costume Overrides)
	    sprite_index = Get_Overworld_Sprite(Get_Character_Overworld_Sprite("Local",_character,"Total"));//set their sprite
	    portrait_ID = Get_Character_Portrait("Local",_character,"Total");//Set Portrait
	    voice_ID = Get_Character_Voice("Local",_character,"Total");//Set Voice
	}




}
