extends Area2D

signal gras


func _on_gras_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		emit_signal("gras")
		$grasSound.play()


func _on_gras_mouse_entered():
	$Sprite.set_frame(1)


func _on_gras_mouse_exited():
	$Sprite.set_frame(0)
