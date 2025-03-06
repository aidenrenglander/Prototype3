extends Node2D

var player_scene = preload("res://player.tscn")  # Ensure this path is correct

func _ready():
	var player = player_scene.instantiate()
	
	# Make sure you have a 'SpawnPoint' in your scene!
	var spawn_point = $SpawnPoint  # Finds the spawn point
	if spawn_point:
		player.position = spawn_point.position  # Move player to the correct position

	add_child(player)  # Add the player to the scene
