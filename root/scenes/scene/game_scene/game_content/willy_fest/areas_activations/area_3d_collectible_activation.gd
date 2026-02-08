extends Area3D

@export var videoStreaming:VideoStreamPlayer

func _on_body_entered(body):
	var bus_index = AudioServer.get_bus_index("Music")
	AudioServer.set_bus_mute(bus_index, true)
	videoStreaming.play()


func _on_body_exited(body):
	var bus_index = AudioServer.get_bus_index("Music")
	AudioServer.set_bus_mute(bus_index, false)
	videoStreaming.stop()
