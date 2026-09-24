class_name InventoryContainer
extends Control

const TEST_INV_1 = preload("uid://dkk1blih1ol4k")
const SLOT_SCENE = preload("uid://cyn23faj5ckjc")

const NUMBER_OF_SLOTS := 45

var inv: Inventory


func _ready() -> void:
	inv = TEST_INV_1
	populate_inventory()
	var c = %GridContainer.get_child(10)
	c.set_item(ItemsDatabse.get_item(&"diamond_pickaxe"),6)


func populate_inventory() -> void:
	for i in NUMBER_OF_SLOTS:
		var slot = SLOT_SCENE.instantiate()
		%GridContainer.add_child(slot)

		if i < inv.inventory.slots.size():
			slot.set_item(inv.inventory.slots[i])
