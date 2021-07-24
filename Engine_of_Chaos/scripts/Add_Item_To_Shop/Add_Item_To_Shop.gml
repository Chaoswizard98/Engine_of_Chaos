function Add_Item_To_Shop() {
	var _shop = argument[0];
	var _item = argument[1];

	_shop.item_array[number_of_items] = _item;
	_shop.number_of_items += 1;



}
