function Read_Bookshelf_Parent() {
	//This script finds and calls the correct script

	switch(bookshelf_ID){//In case we override for cutscene triggers
	    /*case 9:
	        MoorenfirchWellScript();
	    break;
	    case 22:
	        ValdyChestScript();
	    break;*/
	    default:
	        Read_Bookshelf();//default searchable script
	}






}
