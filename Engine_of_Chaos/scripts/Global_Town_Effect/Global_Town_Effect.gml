function Global_Town_Effect() {
	switch(effect){
	    case "Detox": Detox_Town_Effect(); break;
	    case "Attack_Boost": Attack_Boost_Town_Effect(); break;
	    case "Defense_Boost": Defense_Boost_Town_Effect(); break;
	    case "Agility_Boost": Agility_Boost_Town_Effect(); break;
	    case "Movement_Boost": Movement_Boost_Town_Effect(); break;
	    case "Max_Health_Boost": Max_Health_Boost_Town_Effect(); break;
	    case "Max_Magic_Boost": Max_Magic_Boost_Town_Effect(); break;
	    case "Brave_Apple": Brave_Apple_Town_Effect(); break;
	    case "Forbidden_Box": Forbidden_Box_Town_Effect(); break;
	    default: Default_Town_Effect(); break;
	}



}
