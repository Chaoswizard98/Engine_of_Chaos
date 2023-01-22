function Set_Searchable_Message(_object,_object_type,_message_ID,_cutscene_ID = _object.cutscene_ID) {
	_object.object_type = _object_type;
	_object.message_ID = _message_ID;
	_object.cutscene_ID = _cutscene_ID;
}