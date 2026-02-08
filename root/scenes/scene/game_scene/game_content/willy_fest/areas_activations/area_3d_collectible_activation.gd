extends Area3D

@export var videoStreaming:VideoStreamPlayer

func _on_body_entered(_body):
	videoStreaming.play()


func _on_body_exited(_body):
	videoStreaming.stop()
