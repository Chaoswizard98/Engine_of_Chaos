ai_script_ID = "AI_Default_Physical";
ai_walk_region = 1;//the region where the AI starts moving towards their target
ai_sprint_region = 2;//The region where the AI sprints at their target
if(global.Story_State >= 9){
	is_npc = true;//Flag them as an NPC
	dialogue_script = "none";//Dialogue Message ID to print when talked to
	allow_wander = true;//Allow NPC to wander.
	wander_radius = 6;//Set NPC's Wander Radius	
}