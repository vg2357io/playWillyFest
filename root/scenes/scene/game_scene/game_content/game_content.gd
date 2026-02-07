class_name GameContent
extends Control
## Final File MIT License Copyright (c) 2025 vg2357io
## Original File MIT License Copyright (c) 2024 TinyTakinTeller

@onready var pause_menu_button: MenuButtonClass = %PauseMenuButton


func _ready() -> void:
	LogWrapper.debug(self, "Scene ready.")
