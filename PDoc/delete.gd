extends Area2D

signal delete
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_delete_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		print("Clicked")
		emit_signal("delete")
	pass
