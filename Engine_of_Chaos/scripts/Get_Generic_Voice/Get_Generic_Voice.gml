function Get_Generic_Voice(_voice_ID){
	
	switch(_voice_ID){
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
	    case "Search": return noone; break;
	    case "Chest": return noone; break;
	    case "Monster_Has_Appeared": return noone; break;
	    case "Retreat_From_Battle": return sfx_Dialogue01; break;
	    case "Lost_Battle": return sfx_Dialogue01; break;
		
		//Female
		case "Female_Kid_1": return sfx_Dialogue01; break;//Kid
	    case "Female_Kid_2": return sfx_Dialogue02; break;//Kid
	    case "Female_Young_1": return sfx_Dialogue02; break;//Young
	    case "Female_Young_2": return sfx_Dialogue03; break;//Young
	    case "Female_Young_3": return sfx_Dialogue04; break;//Young
	    case "Female_Mature_1": return sfx_Dialogue03; break;//Mature
	    case "Female_Mature_2": return sfx_Dialogue04; break;//Mature
	    case "Female_Old_1": return sfx_Dialogue06; break;//Old
	    case "Female_Old_2": return sfx_Dialogue07; break;//Old
		
		//Male
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
	    case "Generic_Cow": return sfx_Dialogue08; break;
	    case "Generic_Horse": return sfx_Dialogue07; break;
	    case "Generic_Cat": return sfx_Dialogue01; break;
	    case "Generic_Dog": return sfx_Dialogue06; break;
	    case "Generic_Chicken": return sfx_Dialogue01; break;
	}
	
	return noone;
}