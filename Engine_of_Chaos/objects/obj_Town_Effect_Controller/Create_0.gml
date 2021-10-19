character = noone;//the guy whose item we're using
target = noone;//the one using the item
current_object = noone;//the object that created this one

state = "Start";//state of the event sequence
action = "none";//using an item or casting a spell
effect = "none";//effect to perform
lookup_type = "Global";//global or local stats?

item_slot = 0;//character's item slot containing the item
item = "none";//item being used

spell_slot = 0;//caster's spell slot
spell_level = 1;//level we're casting the spell at
spell = "none";

