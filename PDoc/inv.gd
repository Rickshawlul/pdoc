extends Node2D


# Declare member variables here
var fullness = [
	#[fullStatus, chooseStatus, transformStatus]
	['empty', false, false],
	['empty', false, false]
]
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	

func _on_getter_give():
	if fullness[0][0]=='empty' && fullness[0][1]:
			fullness[0][0]='getterObject'
			$"LH/Lefthand".set_animation(fullness[0][0])
			fullness[0][1]=false;
			fullness[0][2]=true;
		
	else:
		if fullness[1][0]=='empty' && fullness[1][1]:
			fullness[1][0]='getterObject'
			$"RH/Righthand".set_animation(fullness[1][0])
			fullness[1][1]=false;
			fullness[1][2]=true;
	pass


func _on_LH_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		fullness[0][1]= not(fullness[0][1])
		$LH/Lefthand.set_frame(fullness[0][1])
		if fullness[1][1]:
			fullness[1][1]= not(fullness[1][1])
			$RH/Righthand.set_frame(fullness[1][1])
	pass 


func _on_RH_input_event(_viewport, event, _shape_idx):
	if (event is InputEventScreenTouch && event.pressed):
		fullness[1][1]= not(fullness[1][1])
		$RH/Righthand.set_frame(fullness[1][1])
		if fullness[0][1]:
			fullness[0][1]= not(fullness[0][1])
			$LH/Lefthand.set_frame(fullness[0][1])
	pass

func _on_transform_transform():
	if fullness[0][1] && fullness[0][2]:
		fullness[0][0]='transformObject'
		$LH/Lefthand.set_animation(fullness[0][0])
		fullness[0][1]=false;
	else:
		if fullness[1][1] && fullness[1][2]:
			fullness[1][0]='transformObject'
			$RH/Righthand.set_animation(fullness[1][0])
			fullness[1][1]=false;
	pass


func _on_delete_delete():
	fullness = [
		#[fullStatus, chooseStatus, transformStatus]
		['empty', false, false],
		['empty', false, false]
	]
	$LH/Lefthand.set_animation(fullness[0][0])
	$LH/Lefthand.set_frame(fullness[0][1])
	$RH/Righthand.set_frame(fullness[1][1])
	$RH/Righthand.set_animation(fullness[1][0])
	pass 
