class_name SlotUi
extends PanelContainer


var item_data:Item  = null
var quantity:int = 0

func _ready() -> void:
	pass

func repopulate_slots():
	if item_data == null:
		%icon.texture = null
		%quantityLabel.text = ""
		%quantityLabel.visible = false
		return
		
	else:
		%icon.texture = item_data.icon
		%quantityLabel.visible = true
		%quantityLabel.text = str(quantity) if quantity > 1 else ""
		

func set_item(data:Item,qty=1,):
	item_data = data
	quantity = qty
	repopulate_slots()

func _gui_input(event: InputEvent) -> void:
	if not event is InputEventMouseButton:
		return
	var mouse_btn := event as InputEventMouseButton
	
	if mouse_btn.button_index == MOUSE_BUTTON_LEFT:
		print(self.item_data.name)
