extends Node
class_name PackageStructureNode

const groupName = "kenney_builder_structures"

@export var structures: Array[Structure] = []

func _ready():
	add_to_group(groupName)
