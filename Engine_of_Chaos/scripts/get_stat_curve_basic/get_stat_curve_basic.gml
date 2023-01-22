function Get_Stat_Curve_Basic(_base_level,_max_level,_current_level,_base_stat,_projected_stat,_growth_type){
	
	var _total_levels = _max_level - _base_level;
	var _region = round(_total_levels / 3);
	var _half = round(_region/2);
	var _default_gains = (_projected_stat - _base_stat) / _total_levels;
	
	switch(_growth_type){
		case "Linear": return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_max_level,1); break;
		case "Early": return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_region,.42,2*_region,.29,3*_region,.29); break;
		case "Middle": return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_region,.29,2*_region,.42,3*_region,.29); break;
		case "Late": return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_region,.29,2*_region,.29,3*_region,.42); break;
		case "Early+Late": return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_region-_half,.21,(2*_region)+_half,.58,3*_region,.21); break;
		default: return Get_Stat_Curve_Advanced(_base_level,_current_level,_base_stat,_projected_stat,_default_gains,_max_level,1); break;
	}
}