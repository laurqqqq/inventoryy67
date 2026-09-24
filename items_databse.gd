extends Node



var items_database: Dictionary[StringName,Item] = {}


func _ready() -> void:
	search_dir_for_res("res://data/itemsResources/")

		
func search_dir_for_res(dir_path:String):
	var dir := DirAccess.open(dir_path)

	if dir == null:
		return
	for file in dir.get_files():
		if file.ends_with(".tres") or file.ends_with(".res"):
			var item = load(dir_path + file)
			items_database[item.id] = item

func get_item(id:StringName) -> Item:
	return items_database.get(id,null)
