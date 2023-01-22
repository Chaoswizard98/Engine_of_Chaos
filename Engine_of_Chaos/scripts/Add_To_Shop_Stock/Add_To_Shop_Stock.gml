function Add_To_Shop_Stock(_item,_index) {
	//adds an item to quantity shop inventories.
	global.Quantity_Shop_Stock[_index,global.Quantity_Shop_Size[_index]] = _item;//add item to shop
	global.Quantity_Shop_Size[_index] += 1;//increase shop size by 1
}