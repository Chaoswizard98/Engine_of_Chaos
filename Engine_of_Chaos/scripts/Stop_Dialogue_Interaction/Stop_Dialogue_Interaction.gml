function Stop_Dialogue_Interaction() {
	//prevents the player from pushing the select button to trigger dialogue end of line calls
	obj_Dialogue_Controller.allow_interaction = false;
}