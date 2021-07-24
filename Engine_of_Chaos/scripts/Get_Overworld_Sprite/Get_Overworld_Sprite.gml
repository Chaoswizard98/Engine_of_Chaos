function Get_Overworld_Sprite() {
	//===============================================
	//returns the sprite of the character based on ID
	//===============================================
	var _spriteID, _sprite;
	_spriteID = argument[0];

	//=========================
	//==Register Sprites Here==
	//=========================
	switch(_spriteID){
	    //Force members
	    case "Jason_Swordsman": _sprite = spr_Jason_Overworld; break;
	    case "Jason_Hero": _sprite = spr_Chicken_Overworld; break;
    
	    case "Max_Archer": _sprite = spr_Max_Overworld; break;
	    case "Ciera_Healer": _sprite = spr_Ciera_Overworld; break;
	    case "Kira_Thief": _sprite = spr_Kira_Overworld; break;
	    case "Karina_Mage": _sprite = spr_Karina_Overworld; break;
	    case "Phillip_Knight": _sprite = spr_Phillip_Overworld; break;
    
	    case "Bowie": _sprite = spr_Bowie_Overworld; break;
	    case "Sarah": _sprite = spr_Sarah_Overworld; break;
	    case "Chester": _sprite = spr_Chester_Overworld; break;
	    case "Billy": _sprite = spr_Billy_Overworld; break;
    
	    //Allies
	    case "Hunter": _sprite = spr_Hunter_Overworld; break;
    
	    //NPCs
	    case "Astral": _sprite = spr_Astral_Overworld; break;
	    case "Chicken": _sprite = spr_Chicken_Overworld; break;
	    case "Bowies_Mom": _sprite = spr_Middle_Aged_Woman_Overworld; break;
	    case "Shopkeeper": _sprite = spr_Shopkeeper_Overworld; break;
	    case "Priest": _sprite = spr_Priest_Overworld; break;
	    case "Guard": _sprite = spr_Guard_Overworld; break;
	    case "Jamie": _sprite = spr_Jamie_Overworld; break;
	    case "Young_Man": _sprite = spr_Young_Man_Overworld; break;
	    case "Old_Man": _sprite = spr_Old_Man_Overworld; break;
	    case "Old_Woman": _sprite = spr_Old_Woman_Overworld; break;
	    case "Professor_Minas": _sprite = spr_Professor_Minas_Overworld; break;
    
	    //Ashenwood NPCS
	    case "Jasons_Mom": _sprite = spr_Jasons_Mom_Overworld; break;
	    case "Jasons_Dad": _sprite = spr_Jasons_Dad_Overworld; break;
	    case "Jasons_Grandpa": _sprite = spr_Jasons_Grandpa_Overworld; break;
    
	    case "Cieras_Mom": _sprite = spr_Cieras_Mom_Overworld; break;
	    case "Cieras_Dad": _sprite = spr_Cieras_Dad_Overworld; break;
	    case "Cieras_Dad_Fishing": _sprite = spr_Cieras_Dad_Fishing_Overworld; break;
	    case "Cieras_Middle_Brother": _sprite = spr_Cieras_Middle_Brother_Overworld; break;
	    case "Cieras_Older_Brother": _sprite = spr_Cieras_Older_Brother_Overworld; break;
    
	    case "Maxs_Mom": _sprite = spr_Maxs_Mom_Overworld; break;
    
	    case "Ashenwood_Weapon_Vendor": _sprite = spr_Shopkeeper_Overworld; break;
	    case "Ashenwood_Item_Vendor": _sprite = spr_Shopkeeper_Overworld; break;
    
	    case "Ashenwood_Innkeeper": _sprite = spr_Ashenwood_Innkeeper_Overworld; break;
	    case "Ashenwood_Traveler": _sprite = spr_Ashenwood_Traveller_Overworld; break;
	    case "Ashenwood_Adventurer_1": _sprite = spr_Ashenwood_Adventurer_1_Overworld; break;
	    case "Ashenwood_Adventurer_2": _sprite = spr_Ashenwood_Adventurer_2_Overworld; break;
	    case "Granny_Gladys": _sprite = spr_Granny_Gladys_Overworld; break;
	    case "Muleborne": _sprite = spr_Muleborne_Overworld; break;
	    case "Jess": _sprite = spr_Jess_Overworld; break;
	    case "Ashenwood_Villager_1": _sprite = spr_Ashenwood_Villager_1_Overworld; break;
	    case "Ashenwood_Villager_2": _sprite = spr_Ashenwood_Villager_2_Overworld; break;
	    case "Ashenwood_Villager_3": _sprite = spr_Ashenwood_Villager_3_Overworld; break;
	    case "Ashenwood_Kid_1": _sprite = spr_Ashenwood_Kid_1_Overworld; break;
	    case "Ashenwood_Kid_2": _sprite = spr_Ashenwood_Kid_2_Overworld; break;
	    case "Ashenwood_Kid_3": _sprite = spr_Ashenwood_Kid_3_Overworld; break;
    
	    //Animals
	    case "Cow": _sprite = spr_Cow_Overworld; break;
	    case "Horse": _sprite = spr_Horse_Overworld; break;
	    case "Dog": _sprite = spr_Dog_Overworld; break;
	    case "Cat_Grey": _sprite = spr_Cat_Grey_Overworld; break;
	    case "Cat_Orange": _sprite = spr_Cat_Orange_Overworld; break;
    
	    //Enemies
	    case "Wolf": _sprite = spr_Wolf_Overworld; break;
	    case "Alpha_Wolf": _sprite = spr_Alpha_Wolf_Overworld; break;
	    case "Bandit": _sprite = spr_Bandit_Overworld; break;
	    case "Bandit_Archer": _sprite = spr_Bandit_Archer_Overworld; break;
	    case "Forest_Serpent": _sprite = spr_Forest_Serpent_Overworld; break;
	    case "Bat": _sprite = spr_Bat_Overworld; break;
	    case "Golem": _sprite = spr_Golem_Overworld; break;
	    case "Rock_Golem": _sprite = spr_Rock_Golem_Overworld; break;
    
	    case "Prism_Flower": _sprite = spr_Prism_Flower_Overworld; break;
	    case "Burst_Rock": _sprite = spr_Burst_Rock_Overworld; break;
    
	    //Bosses
	    case "Arndis": _sprite = spr_Arndis_Overworld; break;
	    case "Thorodda": _sprite = spr_Thorodda_Overworld; break;
	    case "Thurcytel": _sprite = spr_Thurcytel_Overworld; break;
	    case "Skallagrim": _sprite = spr_Skallagrim_Overworld; break;
	    case "Vandred": _sprite = spr_Vandred_Overworld; break;
    
	    //Other
	    case "Death_Flame": _sprite = spr_Death_Flame_Overworld; break;
    
	    default: _sprite = spr_Chaos_Overworld; break;//Default sprite
	}

	//sets sprite origin to center so it can be rotated with less math.
	return Fix_Overworld_Sprite_Origin(_sprite);//fix origin of the sprite (because GameMaker causes trouble sometimes)



}
