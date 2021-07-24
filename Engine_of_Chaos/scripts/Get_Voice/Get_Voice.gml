function Get_Voice() {
	//==============================================
	//returns the voice of the character based on ID
	//==============================================
	var _voiceID;
	_voiceID = argument[0];

	//========================
	//==Register Voices here==
	//========================
	switch(_voiceID){
	    //Normal Sound calls, just use the sound name
	    case "sfx_Dialogue01": return sfx_Dialogue01; break;
	    case "sfx_Dialogue02": return sfx_Dialogue02; break;
	    case "sfx_Dialogue03": return sfx_Dialogue03; break;
	    case "sfx_Dialogue04": return sfx_Dialogue04; break;
	    case "sfx_Dialogue05": return sfx_Dialogue05; break;
	    case "sfx_Dialogue06": return sfx_Dialogue06; break;
	    case "sfx_Dialogue07": return sfx_Dialogue07; break;
	    case "sfx_Dialogue08": return sfx_Dialogue08; break;
    
	    //Sound calls for menus / events
	    case "Use_Item": return sfx_Dialogue01; break;
	    case "Give_Item": return sfx_Dialogue01; break;
	    case "Equip_Item": return sfx_Dialogue01; break;
	    case "Drop_Item": return sfx_Dialogue01; break;
	    case "Cast_Spell": return sfx_Dialogue01; break;
	    case "Bookshelf": return noone; break;
	    case "Chest": return noone; break;
	    case "Monster_Has_Appeared": return noone; break;
	    case "Retreat_From_Battle": return sfx_Dialogue01; break;
	    case "Lost_Battle": return sfx_Dialogue01; break;
    
	    //Playable Characters
	    case "Jason_Swordsman": return sfx_Dialogue05; break;
	    case "Max_Archer": return sfx_Dialogue05; break;
	    case "Ciera_Healer": return sfx_Dialogue03; break;
	    case "Kira_Thief": return sfx_Dialogue04; break;
	    case "Karina_Mage": return sfx_Dialogue04; break;
	    case "Phillip_Knight": return sfx_Dialogue06; break;
    
	    //Ashenwood NPCs
	    case "Jasons_Mom": return sfx_Dialogue03; break;
    
	    //you can also remember characters by setting their name here
	    case "Shopkeeper": return sfx_Dialogue05; break;
	    case "Bowies_Mom": return sfx_Dialogue03; break;
	    case "Bowie": return sfx_Dialogue05; break;
	    case "Chaos": return sfx_Dialogue05; break;
	    case "Astral": return sfx_Dialogue07; break;
	    case "Billy": return sfx_Dialogue04; break;
	    case "Sarah": return sfx_Dialogue02; break;
	    case "Chester": return sfx_Dialogue06; break;
	    case "Jamie": return sfx_Dialogue01; break;
	    case "Old_Man": return sfx_Dialogue05; break;
	    case "Old_Woman": return sfx_Dialogue04; break;
	    case "Young_Man": return sfx_Dialogue03; break;
    
    
    
	    //Playable Characters
    
	    //Important NPCs
    
	    //Ashenwood NPCs
	    /*case 'Jasons_Mom': return sfx_Dialogue03; break;
	    case 'Jasons_Dad': return sfx_Dialogue05; break;
	    case 'Jasons_Grandpa': return sfx_Dialogue07; break;
	    case 'Cieras_Mom': return sfx_Dialogue03; break;
	    case 'Cieras_Dad': return sfx_Dialogue05; break;
	    case 'Cieras_Middle_Brother': return sfx_Dialogue05; break;
	    case 'Cieras_Older_Brother': return sfx_Dialogue05; break;
	    case 'Maxs_Mom': return sfx_Dialogue03; break;
    
	    case 'Ashenwood_Weapon_Vendor': return sfx_Dialogue06; break;
	    case 'Ashenwood_Item_Vendor': return sfx_Dialogue06; break;*/
    
	    //========
	    //Generic=
	    //========
	    case "Female_Kid_1": return sfx_Dialogue01; break;//Kid
	    case "Female_Kid_2": return sfx_Dialogue02; break;//Kid
	    case "Female_Young_1": return sfx_Dialogue02; break;//Young
	    case "Female_Young_2": return sfx_Dialogue03; break;//Young
	    case "Female_Young_3": return sfx_Dialogue04; break;//Young
	    case "Female_Mature_1": return sfx_Dialogue03; break;//Mature
	    case "Female_Mature_2": return sfx_Dialogue04; break;//Mature
	    case "Female_Old_1": return sfx_Dialogue06; break;//Old
	    case "Female_Old_2": return sfx_Dialogue07; break;//Old
    
	    case "Male_Kid_1": return sfx_Dialogue03; break;//Kid
	    case "Male_Kid_2": return sfx_Dialogue04; break;//Kid
	    case "Male_Young_1": return sfx_Dialogue04; break;//Young
	    case "Male_Young_2": return sfx_Dialogue05; break;//Young
	    case "Male_Young_3": return sfx_Dialogue06; break;//Young
	    case "Male_Mature_1": return sfx_Dialogue05; break;//Mature
	    case "Male_Mature_2": return sfx_Dialogue06; break;//Mature
	    case "Male_Mature_3": return sfx_Dialogue07; break;//Mature
	    case "Male_Old_1": return sfx_Dialogue07; break;//Old
	    case "Male_Old_2": return sfx_Dialogue08; break;//Old
    
	    //Animals
	    case "Cow": return sfx_Dialogue08; break;
	    case "Horse": return sfx_Dialogue07; break;
	    case "Cat": return sfx_Dialogue01; break;
	    case "Dog": return sfx_Dialogue06; break;
	    case "Chicken": return sfx_Dialogue01; break;
    
    
	    default: return noone; break;//Default to no voice
	}



}
