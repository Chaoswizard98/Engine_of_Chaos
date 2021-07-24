function End_Battle() {
	//Tests if we end the battle or not
	//and starts the end battle cutscene if we do
	var _script = "none";

	_script = Lost_Battle(_script);//check if we lost the battle (and play end cutscene if we did)
	_script = Won_Battle(_script);//check if we won the battle (and play end cutscene if we did)

	if(_script != "none"){//if we are ending the battle, play the end battle cutscene
	    Create_Cutscene_Controller(_script,"Battle_Cutscene");//script,type
	    return true;
	}

	return false;;



}
