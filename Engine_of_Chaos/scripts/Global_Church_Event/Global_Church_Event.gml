function Global_Church_Event() {
	//In case you wanted to run a completely different
	//set of events for shops... here ya go!

	switch(script_ID){
	    case "Raise": Church_Raise_Event(); break;
	    case "Cure": Church_Cure_Event(); break;
	    case "Promote": Church_Promote_Event(); break;
	    case "Save": Church_Save_Event(); break;
	}
}