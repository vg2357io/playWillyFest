extends Area3D

@export var timeline_dialogue:DialogicTimeline

var on_area_npc_detection:bool = false

func _input(event: InputEvent):
	# check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	
	if event is InputEventKey and on_area_npc_detection and event.keycode == KEY_ENTER and event.pressed:
		Dialogic.start_timeline(timeline_dialogue)
		get_viewport().set_input_as_handled()
	
		await get_tree().process_frame


func _on_body_entered(body):
	on_area_npc_detection = true

func _on_body_exited(body):
	Dialogic.end_timeline()
	on_area_npc_detection = false
