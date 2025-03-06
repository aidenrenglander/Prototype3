#extends Area2D
#@export var target_position: Vector2 = Vector2(992,720)
#
## Called when the node enters the scene tree for the first time.
#func _on_body_entered(body):
	#if body.is_in_group("player") and target_position != Vector2.ZERO:
		#body.global_position = target_position
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

extends Area2D

@export var target_scene: String = "res://main.tscn"  # Set this to the scene you want to load

func _ready():
	connect("body_entered", _on_body_entered)  # Ensure it's connected

func _on_body_entered(body):
	if body.is_in_group("player"):  # Make sure the player is in the correct group
		get_tree().change_scene_to_file(target_scene)  # Change scene
