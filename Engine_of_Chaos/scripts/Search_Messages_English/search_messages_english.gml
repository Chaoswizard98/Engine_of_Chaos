function Search_Messages_English(_searchable,_player) {
	var _message = "";
	var _name = Get_Character_Name("Local",_player,"Total")
	//===============
	//Search Message=
	//===============
	switch(_searchable.object_type){
	    case "Bookshelf": _message = (_name + " examines the bookshelf."); break;
	    case "Sign": _message = (_name + " investigates the sign."); break;
	    case "Notice_Board": _message = (_name + " investigates the notice board."); break;
	    case "Door": _message = (_name + " investigates the door."); break;
	    case "Well": _message = (_name + " looks into the well."); break;
	    case "Note": _message = (_name + " investigates the note."); break;
		case "Cave": _message = (_name + " peers into the cave."); break;
	    case "Area": _message = (_name + " investigates the area."); break;
    
	    default: _message = (_name + " investigates the area."); break;
	}
	//=========================
	//Log witty 1 liner's here=
	//=========================
	switch(_searchable.message_ID){
	    //Bookshelves
	    case "How_To_Make_Game": _message += ("%\nHow to Make a Shining Force Game. By Chaoswizard98.%\nStep 1: Wing it. %\nStep 2: Ensure the wolf obtains the healing rain. %\nStep 3: Release Demo. %\nWhat a strange book!"); break;
	    case "Farming_Techniques": _message += ("%\nOne book is titled 'Farming Techniques.'"); break;
	    case "Livestock_Guide": _message += ("%\n'A Guide to Raising Livestock' and many more books."); break;
	    case "Ashenwood_History": _message += ("%\n'The History of Ashenwood' %\nAshenwood gets its name from the settlers unique farming methods of setting their fields on fire after harvest. %\nThe dead brush is reduced to ash which subsequently fertilizes the soil for the following year."); break;
	    case "Fire_Festival": _message += ("%\n'The Fire Festival' %\nA harvest time event with games, fresh produce, and of course, the burning of the fields."); break;
	    case "Wine_Guide": _message += ("%\n'How to Properly Age Wine' and many more books."); break;
	    case "Elven_Culture": _message += ("%\n'A Guide to Elven Culture' and many more books."); break;
	    case "Art_of_Bartering": _message += ("%\n'The Art of Bartering' and many more books."); break;
	    case "Archery_101": _message += ("%\n'Archery 101' and many more books."); break;
	    case "The_Adventurers_Lifestyle": _message += ("%\n'The Adventurer's Lifestyle' and many more books."); break;
	    case "Elven_History": _message += ("%\n'Elven History' and many more books."); break;
	    case "Innkeeper_Etiquette": _message += ("%\n'Inkeeper Etiquette' and many more books."); break;
	    case "Art_of_Swordsmanship": _message += ("%\n'The Art of Swordsmanship' and many more books."); break;
	    case "Art_of_Saddle_Making": _message += ("%\n'The Art of Saddle Making' and many more books."); break;
	    case "Leatherworking_Techniques": _message += ("%\n'Leatherworking Techniques' and many more books."); break;
	    case "Jess_Diary": _message += ("%\n'JESS' Diary' and many more books."); break;
	    case "Taxidermy_Guide": _message += ("%\n'A Guide to Taxidermy' and many more books."); break;
	    case "Treasures_and_Monsters": _message += ("%\n'Fabled Treasures and Monsters' and many more books."); break;
	    case "Healing_Spells": _message += ("%\n'Healing Spells' and many more books."); break;
	    case "Hosting_Formal_Parties": _message += ("%\n'Hosting Formal Parties' and many more books."); break;
	    case "Barrel_Making": _message += ("%\n'A Journeyman's Guide to Barrel Making' and many more books."); break;
	    case "Tavern_Management": _message += ("%\n'Tavern Management in Rural Areas' and many more books."); break;
	    case "Useful_Bard": _message += ("%\n'The Myth of the Useful Bard' and many more books."); break;
	    case "Frozen_Volcano": _message += ("%\n'The Frozen Volcano' and many more books."); break;
	    case "Glass_Citadel": _message += ("%\n'The Glass Citadel' and many more books."); break;
	    case "Accidental_Pickpocketing": _message += ("%\n'Accidental Pickpocketing and Other Excuses' and many more books."); break;
	    case "Wind_Magic": _message += ("%\n'A Beginners Guide to Wind Magic' and many more books."); break;
	    case "Advanced_Woodworking": _message += ("%\n'Advanced Woodworking' and many more books."); break;
		case "Forging_Mithril": _message += ("%\n'The Art of Forging Mithril' and many more books."); break;
		case "Herbal_Remedies": _message += ("%\n'Herbal Remedies' and many more books."); break;
		
		
		//Currently Unused / needs a home
	    case "Spell_Theory": _message += ("%\n'Spells we are Still Trying to Make Work' and many more books."); break;
	    case "Tusk_Love": _message += ("%\n'Tusk Love' and many more books."); break; //Critical Role
		
		//Fun References
	    case "Fantastic_Beasts": _message += ("%\n'Fantastic Beasts and How to Hunt Them' and many more books."); break;//Fantastic Beasts
	    case "How_to_Slay_Your_Dragon": _message += ("%\n'How to Slay Your Dragon' and many more books."); break;//How to Train Your Dragon
	    case "Forgettable_Tale": _message += ("%\n'The Forgettable Tale of a Drunken Dwarf' and many more books."); break;//Runescape
	    case "Recipe_For_Disaster": _message += ("%\n'Recipes For Disaster' and many more books."); break;//Runescape
	    case "Cypress_War": _message += ("%\n'The Great Cypress War' and many more books."); break;//SFCD
	    case "Open_Plains": _message += ("%\n'War on the Open Plains' and many more books."); break;//SFCD
	    case "Warrior_of_Light": _message += ("%\n'Warrior of the Reviving Light' and many more books."); break;//SF2
	    case "Ultimate_Spell": _message += ("%\n'The Ultimate Spell' and many more books."); break;//SFCD
	    case "Adventures_of_Boken": _message += ("%\n'The Adventures of Boken' and many more books."); break;//SF1
	    case "People_of_a_Distant_Time": _message += ("%\n'The People of a Distant Time' and many more books."); break;//SF1
	    case "Where_the_Wind_Blows_Strangely": _message += ("%\n'Where the Wind Blows Strangely' and many more books."); break;//Legends of Cendiel
	    case "Certainty_of_Twilight": _message += ("%\n'A Certainty of Twilight' and many more books."); break;//Legends of Cendiel
	    case "Heart_of_the_Bards": _message += ("%\n'Believing in the Heart of the Bards' and many more books."); break;//Yugioh
	    case "Qi_Card": _message += ("%\nA 'Qi Card.'%\nNo idea what that does!"); break;//Stardew Valley
    
	
	    //Wells
	    case "Deep_Well": _message += ("%\nA deep well."); break;
	    case "Old_Well": _message += ("%\nAn old well."); break;
	    case "Stone_Well": _message += ("%\nA stone well."); break;     
		case "Filled_With_Water": _message += ("%\nIt's filled with clean water."); break;
	    case "Just_Water": _message += ("%\nWell, it's just water."); break;//Suggestion by Taterz
		case "Snake": _message += ("%\nYou see a snake swimming at the bottom."); break;//Suggestion by Caedmon
		case "Bottomless": _message += ("%\nA bottomless pool of water."); break;
		
		//that the well is without water or has a strange smell [Lynx]
		//Maybe one with something splashing around in it or filled with snakes…… [Caedmon]
		
		
	    //Signs
	    case "Weapon_Shop": _message += ("%\nWeapon Shop."); break;
	    case "Item_Shop": _message += ("%\nItem Shop."); break;
		case "Annas_Herbals": _message += ("%\nAnna's Herbals."); break;
		case "Dolans_Smithy": _message += ("%\nDolan's Smithy."); break;
    
	    //Notice Board
	    case "Ashenwood_Inn": _message += ("%\nCull the encroaching wolf population.%\nREWARD: 10 Gold per wolf slain."); break;
		case "Judys_Cat": _message += ("%\nThat old bag JUDY lost her cat again.%\nIf anyone finds FLUFFY, please return it to her."); break;
		case "Hillford_Monsters": _message += ("%\nThe Moorenfirch adventurer’s guild is offering a bounty for any monsters slain in the mines."); break;
	    //Doors
    
	    //Notes
	    case "Maxs_Desk": _message += ("%\nA letter specifically requesting the assistance of your adventuring party from an individual named Damian Minas."); break;
		case "Power_Wine": _message += ("%\nNow selling Power Wine!"); break;
		case "Mithril": _message += ("%\nOrders requiring Mithril are acceptable so long as the ore is provided."); break;
		
		
		//Cave
		case "Battle_01_Cave": _message += ("%\nIt is very dark inside."); break;
		
		
	    //Area
	    case "Jess_Desk": _message += ("%\nIt looks like JESS is working on a painting."); break;
	
    
	    //Default 'Unregistered' Messages
	    default: 
	        switch(_type_ID){
	            case "Bookshelf": _message += "%\nBut these books aren't written yet!"; break;
	            case "Sign": _message += "%\nBut the sign is blank!"; break;
	            case "Notice_Board": _message += "%\nBut nothing is posted yet!"; break;
	            case "Door": _message += "%\nYep. It's a door!"; break;
	            case "Well": _message += "%\nA deep well."; break;
	            case "Note": _message += "%\nBut the note is blank!"; break;
	            case "Area": _message += "%\nNothing is out of place."; break;
	            default: _message += "%\nNothing is out of place."; break;
	        }
	    break;
	}


	return _message;



}
