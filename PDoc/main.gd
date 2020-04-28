extends Node2D

export (PackedScene) var Peasant



func _on_SpawnTimer_timeout():
	var peasant=Peasant.instance()
	add_child(peasant)
	peasant.position = $peasantPath/peasantSpawnLocation.position
