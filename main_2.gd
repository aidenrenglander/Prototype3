extends Node2D


@export var target_position: Vector2 = Vector2(992,735)
@export var target_position2: Vector2 = Vector2(288,80)
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


func _on_doorway_1_body_entered(body):
	print("Detected:", body.name)
	if body.is_in_group("player") and target_position != Vector2.ZERO:
		print("Player detected in door1! Teleporting...")
		body.global_position = target_position


func _on_doorway_2_body_entered(body):
	print("Detected:", body.name)
	if body.is_in_group("player") and target_position2 != Vector2.ZERO:
		print("Player detected in door2! Teleporting...")
		body.global_position = target_position2
