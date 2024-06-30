function Calculate_Threat_Healer_Percent(_character,_target,_effect,_effect_level,_divisor){
	var _threat = (Get_Character_Health("Local",_target,"Total") / Get_Character_Max_Health("Local",_target,"Total"))*100;//Calculate %HP missing
	return _threat;
}