//Counts the number of battle cutscene props
//that contain the provided ID
function Get_Battle_Prop(_prop){
	var _temp = noone;
	with(obj_Battle_Cutscene_Prop){
		if(prop = _prop){
			_temp = id;	
		}
	}
	return _temp;
}