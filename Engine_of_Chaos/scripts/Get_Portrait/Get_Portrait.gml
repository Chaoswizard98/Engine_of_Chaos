function Get_Portrait() {
	//==============================================
	//returns the voice of the character based on ID
	//==============================================
	var _portraitID, _blink;
	_portraitID = argument[0];
	_blink = argument[1];

	//===========================
	//==Register Portraits here==
	//===========================
	switch(_portraitID){
	    //LoS Force Members
	    case "Jason_Swordsman": if(_blink){ return spr_Jason_Portrait_Blink; } return spr_Jason_Portrait; break;
	    case "Jason_Hero": if(_blink){ return spr_Chaos_Portrait_Blink; } return spr_Chaos_Portrait; break;
    
	    case "Max_Archer": if(_blink){ return spr_Max_Portrait_Blink; } return spr_Max_Portrait; break;
	    case "Ciera_Healer": if(_blink){ return spr_Ciera_Portrait_Blink; } return spr_Ciera_Portrait; break;
	    case "Kira_Thief": if(_blink){ return spr_Kira_Portrait_Blink; } return spr_Kira_Portrait; break;
	    case "Karina_Mage": if(_blink){ return spr_Karina_Portrait_Blink; } return spr_Karina_Portrait; break;
	    case "Phillip_Knight": if(_blink){ return spr_Phillip_Portrait_Blink; } return spr_Phillip_Portrait; break;
    
	    //SF2 Force Members
	    case "Bowie": if(_blink){ return spr_Bowie_Portrait_Blink; } return spr_Bowie_Portrait; break;
	    case "Sarah": if(_blink){ return spr_Sarah_Portrait_Blink; } return spr_Sarah_Portrait; break;
	    case "Chester": if(_blink){ return spr_Chester_Portrait_Blink; } return spr_Chester_Portrait; break;
    
	    //Demo NCS
	    case "Billy": if(_blink){ return spr_Billy_Portrait_Blink; } return spr_Billy_Portrait; break;
	    case "Astral": if(_blink){ return spr_Astral_Portrait_Blink; } return spr_Astral_Portrait; break;
	    case "Priest": if(_blink){ return spr_Priest_Portrait_Blink; } return spr_Priest_Portrait; break;
	    case "Shopkeeper": if(_blink){ return spr_Shopkeeper_Portrait_Blink; } return spr_Shopkeeper_Portrait; break;
    
	    //Chaos
	    case "Chaos": if(_blink){ return spr_Chaos_Portrait_Blink; } return spr_Chaos_Portrait; break;
	    case "Jamie": if(_blink){ return spr_Jamie_Portrait_Blink; } return spr_Jamie_Portrait; break;
    
	    case "Ashenwood_Weapon_Vendor": if(_blink){ return spr_Shopkeeper_Portrait_Blink; } return spr_Shopkeeper_Portrait; break;
	    case "Ashenwood_Item_Vendor": if(_blink){ return spr_Shopkeeper_Portrait_Blink; } return spr_Shopkeeper_Portrait; break;
	    case "Chicken": if(_blink){ return spr_Chicken_Portrait_Blink; } return spr_Chicken_Portrait; break;
    
	    default: return spr_Blank_Sprite; break;//Default to no portrait
	}



}
