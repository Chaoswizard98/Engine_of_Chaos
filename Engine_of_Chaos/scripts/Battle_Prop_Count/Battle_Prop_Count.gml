//Counts the number of battle cutscene props
//that contain the provided ID
function Battle_Prop_Count(_prop){
	var i = 0;
	with(obj_Battle_Cutscene_Prop){
		if(prop = _prop){
			i+=1;	
		}
	}
	return i;
}