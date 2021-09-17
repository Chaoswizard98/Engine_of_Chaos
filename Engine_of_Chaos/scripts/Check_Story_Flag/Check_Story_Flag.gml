function Check_Story_Flag(_chapter,_flag,_value){
	if(global.Story_Flags[_chapter,_flag] = _value){
		return true;	
	}
	return false;
}