function Get_Day_Light_Color() {
	var _hour = argument[0];

	var day = c_white;
	var sunrise = c_orange;
	var sunset = c_orange;
	var twilight = make_colour_hsv(172,134,84);
	var night = merge_colour(c_black,c_navy,.3);
	var absolute_night = make_colour_hsv(163,203,102);

	switch(_hour){
	    case 1: return absolute_night; break;
	    case 2: return absolute_night; break;
	    case 3: return absolute_night; break;
	    case 4: return absolute_night; break;
	    case 5: return twilight; break;
	    case 6: return merge_color(night,sunrise,1/3); break;
	    case 7: return merge_color(night,sunrise,2/3); break;
	    case 8: return merge_color(sunrise,day,1/3); break;
	    case 9: return merge_color(sunrise,day,2/3);; break;
	    case 10: return day; break;
	    case 11: return day; break;
	    case 12: return day; break;
	    case 13: return day; break;
	    case 14: return day; break;
	    case 15: return day; break;
	    case 16: return day; break;
	    case 17: return merge_color(day,sunset,1/3); break;
	    case 18: return merge_color(day,sunset,2/3); break;
	    case 19: return merge_color(sunset,night,1/3); break;
	    case 20: return merge_color(sunset,night,2/3); break;
	    case 21: return twilight; break;
	    case 22: return absolute_night; break;
	    case 23: return absolute_night; break;
	    case 24: return absolute_night; break;
	}



}
