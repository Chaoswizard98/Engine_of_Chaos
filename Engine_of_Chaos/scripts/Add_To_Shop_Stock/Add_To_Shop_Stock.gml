function Add_To_Shop_Stock() {
	//adds an item to quantity shop inventories.
	var item = argument[0];//item to add to shop
	var index = argument[1];//shop to add item to

	global.Quantity_Shop_Stock[index,global.Quantity_Shop_Size[index]] = item;//add item to shop
	global.Quantity_Shop_Size[index] += 1;//increase shop size by 1



}
