function End_Battle() {
	var _script = "none";

	_script = Lost_Battle(_script);//check if we lost the battle (and play end cutscene if we did)
	_script = Won_Battle(_script);//check if we won the battle (and play end cutscene if we did)

	if(_script != "none"){//if we are ending the battle, play the end battle cutscene
		Start_Cutscene(_script);
	    return true;
	}
	return false;
}