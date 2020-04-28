extends Area2D

signal knife

func _on_Knife_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		emit_signal("knife")
		$knifeSound.play()



func _on_Knife_mouse_entered():
	$Sprite.set_frame(1)


func _on_Knife_mouse_exited():
	$Sprite.set_frame(0)
