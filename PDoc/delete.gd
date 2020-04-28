extends Area2D

signal delete


func _on_delete_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		emit_signal("delete")
		$deleteSound.play()
	pass


func _on_delete_mouse_entered():
	$Sprite.set_frame(1)


func _on_delete_mouse_exited():
	$Sprite.set_frame(0)
