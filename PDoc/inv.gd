extends Node2D


# Declared member variables
var fullness = [
	#[fullStatus, chooseStatus, transformStatus]
	['empty', false, ['none']],
	['empty', false, ['none']]
]
	
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

func _on_delete_delete():
	fullness = [
		#[fullStatus, chooseStatus, transformStatus]
		['empty', false, ['none']],
		['empty', false, ['none']]
	]
	$LH/Lefthand.set_animation(fullness[0][0])
	$LH/Lefthand.set_frame(fullness[0][1])
	$RH/Righthand.set_frame(fullness[1][1])
	$RH/Righthand.set_animation(fullness[1][0])
	pass 





func _on_cloath_cloath():
	if fullness[0][0]=='empty' && fullness[0][1]:
			fullness[0][0]='cloathObject'
			$"LH/Lefthand".set_animation(fullness[0][0])
			fullness[0][1]=false;
			fullness[0][2]=['Knife'];
		
	else:
		if fullness[1][0]=='empty' && fullness[1][1]:
			fullness[1][0]='cloathObject'
			$"RH/Righthand".set_animation(fullness[1][0])
			fullness[1][1]=false;
			fullness[1][2]=['Knife'];
	pass


func _on_gras_gras():
	print('click')
	if fullness[0][0]=='empty' && fullness[0][1]:
			fullness[0][0]='grasObject'
			$"LH/Lefthand".set_animation(fullness[0][0])
			fullness[0][1]=false;
		
	else:
		if fullness[1][0]=='empty' && fullness[1][1]:
			fullness[1][0]='grasObject'
			$"RH/Righthand".set_animation(fullness[1][0])
			fullness[1][1]=false;
	pass


func _on_glasses_glasses():
	print('click')
	if fullness[0][0]=='empty' && fullness[0][1]:
			fullness[0][0]='glassesObject'
			$"LH/Lefthand".set_animation(fullness[0][0])
			fullness[0][1]=false;
		
	else:
		if fullness[1][0]=='empty' && fullness[1][1]:
			fullness[1][0]='glassesObject'
			$"RH/Righthand".set_animation(fullness[1][0])
			fullness[1][1]=false;
	pass

func _on_Knife_knife():
	if fullness[0][1] && fullness[0][2].has('Knife'):
		print (fullness[0][2].has('Knife'))
		fullness[0][0]=fullness[0][0]+'Knife'
		$LH/Lefthand.set_animation(fullness[0][0])
		fullness[0][1]=false;
		
	else:
		if fullness[1][1] && fullness[1][2].has('Knife'):
			fullness[1][0]=fullness[1][0]+'Knife'
			$RH/Righthand.set_animation(fullness[1][0])
			fullness[1][1]=false;
