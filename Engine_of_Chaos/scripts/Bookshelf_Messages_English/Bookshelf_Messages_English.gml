function Bookshelf_Messages_English(_bookshelf,_player) {
	var _message = "";
	var _name = Get_Character_Name("Local",_player,"Total")
	//===============
	//Search Message=
	//===============
	switch(_bookshelf.object_type){
	    case "Bookshelf": _message = (_name + " examines the bookshelf."); break;
	    case "Sign": _message = (_name + " investigates the sign."); break;
	    case "Notice_Board": _message = (_name + " investigates the notice board."); break;
	    case "Door": _message = (_name + " investigates the door."); break;
	    case "Well": _message = (_name + " looks into the well."); break;
	    case "Note": _message = (_name + " investigates the note."); break;
	    case "Area": _message = (_name + " investigates the area."); break;
    
	    default: _message = (_name + " investigates the area."); break;
	}
	//=========================
	//Log witty 1 liner's here=
	//=========================
	switch(_bookshelf.message_ID){
	    //Bookshelves
	    case "How_To_Make_Game": _message += ("%#How to Make a Shining Force Game. By Chaoswizard98.%#Step 1: Wing it. %#Step 2: Ensure the wolf obtains the healing rain. %#Step 3: Release Demo. %#What a strange book!"); break;
	    case "Farming_Techniques": _message += ("%#One book is titled 'Farming Techniques.'"); break;
	    case "Livestock_Guide": _message += ("%#'A Guide to Raising Livestock' and many more books."); break;
	    case "Ashenwood_History": _message += ("%#'The History of Ashenwood' %#Ashenwood gets its name from the settlers unique farming methods of setting their fields on fire after harvest. %#The dead brush is reduced to ash which subsequently fertilizes the soil for the following year."); break;
	    case "Fire_Festival": _message += ("%#'The Fire Festival' %#A harvest time event with games, fresh produce, and of course, the burning of the fields."); break;
	    case "Wine_Guide": _message += ("%#'How to Properly Age Wine' and many more books."); break;
	    case "Elven_Culture": _message += ("%#'A Guide to Elven Culture' and many more books."); break;
	    case "Art_of_Bartering": _message += ("%#'The Art of Bartering' and many more books."); break;
	    case "Archery_101": _message += ("%#'Archery 101' and many more books."); break;
	    case "The_Adventurers_Lifestyle": _message += ("%#'The Adventurer's Lifestyle' and many more books."); break;
	    case "Elven_History": _message += ("%#'Elven History' and many more books."); break;
	    case "Innkeeper_Etiquette": _message += ("%#'Inkeeper Etiquette' and many more books."); break;
	    case "Art_of_Swordsmanship": _message += ("%#'The Art of Swordsmanship' and many more books."); break;
	    case "Art_of_Saddle_Making": _message += ("%#'The Art of Saddle Making' and many more books."); break;
	    case "Leatherworking_Techniques": _message += ("%#'Leatherworking Techniques' and many more books."); break;
	    case "Jess_Diary": _message += ("%#'JESS' Diary' and many more books."); break;
	    case "Taxidermy_Guide": _message += ("%#'A Guide to Taxidermy' and many more books."); break;
	    case "Treasures_and_Monsters": _message += ("%#'Fabled Treasures and Monsters' and many more books."); break;
	    case "Healing_Spells": _message += ("%#'Healing Spells' and many more books."); break;
	    case "Hosting_Formal_Parties": _message += ("%#'Hosting Formal Parties' and many more books."); break;
	    case "Barrel_Making": _message += ("%#'A Journeyman's Guide to Barrel Making' and many more books."); break;
	    case "Tavern_Management": _message += ("%#'Tavern Management in Rural Areas' and many more books."); break;
	    case "Useful_Bard": _message += ("%#'The Myth of the Useful Bard' and many more books."); break;
	    case "Frozen_Volcano": _message += ("%#'The Frozen Volcano' and many more books."); break;
	    case "Glass_Citadel": _message += ("%#'The Glass Citadel' and many more books."); break;
	    case "Accidental_Pickpocketing": _message += ("%#'Accidental Pickpocketing and Other Excuses' and many more books."); break;
	    case "Wind_Magic": _message += ("%#'A Beginners Guide to Wind Magic' and many more books."); break;
	    case "Advanced_Woodworking": _message += ("%#'Advanced Woodworking' and many more books."); break;
    
	    case "Spell_Theory": _message += ("%#'Spells we are Still Trying to Make Work' and many more books."); break;
    
	    case "Tusk_Love": _message += ("%#'Tusk Love' and many more books."); break; //Critical Role
	    case "Fantastic_Beasts": _message += ("%#'Fantastic Beasts and How to Hunt Them' and many more books."); break;//Fantastic Beasts
	    case "How_to_Slay_Your_Dragon": _message += ("%#'How to Slay Your Dragon' and many more books."); break;//How to Train Your Dragon
	    case "Forgettable_Tale": _message += ("%#'The Forgettable Tale of a Drunken Dwarf' and many more books."); break;//Runescape
	    case "Recipe_For_Disaster": _message += ("%#'Recipes For Disaster' and many more books."); break;//Runescape
	    case "Cypress_War": _message += ("%#'The Great Cypress War' and many more books."); break;//SFCD
	    case "Open_Plains": _message += ("%#'War on the Open Plains' and many more books."); break;//SFCD
	    case "Warrior_of_Light": _message += ("%#'Warrior of the Reviving Light' and many more books."); break;//SF2
	    case "Ultimate_Spell": _message += ("%#'The Ultimate Spell' and many more books."); break;//SFCD
	    case "Adventures_of_Boken": _message += ("%#'The Adventures of Boken' and many more books."); break;//SF1
	    case "People_of_a_Distant_Time": _message += ("%#'The People of a Distant Time' and many more books."); break;//SF1
	    case "Where_the_Wind_Blows_Strangely": _message += ("%#'Where the Wind Blows Strangely' and many more books."); break;//Legends of Cendiel
	    case "Certainty_of_Twilight": _message += ("%#'A Certainty of Twilight' and many more books."); break;//Legends of Cendiel
	    case "Heart_of_the_Bards": _message += ("%#'Believing in the Heart of the Bards' and many more books."); break;//Yugioh
	    case "Qi_Card": _message += ("%#A 'Qi Card.'%#No idea what that does!"); break;//Stardew Valley
    
	    //Wells
	    case "Deep_Well": _message += ("%#A deep well."); break;
	    case "Old_Well": _message += ("%#An old well."); break;
	    case "Stone_Well": _message += ("%#A stone well."); break;     case "Filled_With_Water": _message += ("%#It's filled with clean water."); break;
    
	    case "Just_Water": _message += ("%#Well, it's just water."); break;//Suggestion by Taterz
    
	    //Signs
	    case "Weapon_Shop": _message += ("%#Weapon Shop."); break;
	    case "Item_Shop": _message += ("%#Item Shop."); break;
    
	    //Notice Board
	    case "Ashenwood_Inn": _message += ("%#Cull the encroaching wolf population.%#REWARD: 10 Gold per wolf slain."); break;
    
	    //Doors
    
	    //Notes
	    case "Maxs_Desk": _message += ("%#A letter specifically requesting the assistance of your adventuring party from an individual named Damian Minas."); break;
    
	    //Area
	    case "Jess_Desk": _message += ("%#It looks like JESS is working on a painting."); break;
    
	    //Default 'Unregistered' Messages
	    default: 
	        switch(_type_ID){
	            case "Bookshelf": _message += "%#But these books aren't written yet!"; break;
	            case "Sign": _message += "%#But the sign is blank!"; break;
	            case "Notice_Board": _message += "%#But nothing is posted yet!"; break;
	            case "Door": _message += "%#Yep. It's a door!"; break;
	            case "Well": _message += "%#A deep well."; break;
	            case "Note": _message += "%#But the note is blank!"; break;
	            case "Area": _message += "%#Nothing is out of place."; break;
	            default: _message += "%#Nothing is out of place."; break;
	        }
	    break;
	}


	return _message;



}
