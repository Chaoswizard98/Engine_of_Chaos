function Status_Effect_Prevents_Turn() {
	var _character = argument[0];

	if(Character_Is_Under_Effect("Local",_character,"Paralysis")){ return true; }//test for paralysis
	if(Character_Is_Under_Effect("Local",_character,"Sleep")){ return true; }//test for sleep
	if(Character_Is_Under_Effect("Local",_character,"Stun")){ return true; }//test for stun
	if(Character_Is_Under_Effect("Local",_character,"Petrify")){ return true; }//test for petrification
    
	return false;//no turn prevention effect, they can have their turn



}
