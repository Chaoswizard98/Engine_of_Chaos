//==============================================
//Default Bookshelf / Inspectable object script=
//==============================================
function Search_Message() {
	var _searchable = other_trigger;
	var _player = player_trigger;

	//========================
	//Print the witty message=
	//========================
	switch (state){
	    case 0:
			_player.cutscene_mode = true;
	        Create_Dialogue(noone,Get_Generic_Voice("Search"),Get_Search_Messages(_searchable,_player),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        _player.allow_interaction = true;
			_player.cutscene_mode = false;
			instance_destroy();//destroy the cutscene controller
	    break;
	}
}