extends Node2D

var playerScene = preload("res://player.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var player = playerScene.instantiate()
	player.position = Vector2(126,220)
	add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
