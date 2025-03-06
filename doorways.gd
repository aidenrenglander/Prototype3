extends Area2D
@export var target_position: Vector2 = Vector2(992,720)

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	print("Detected:", body.name)
	if body.is_in_group("player") and target_position != Vector2.ZERO:
		print("Player detected! Teleporting...")
		body.global_position = target_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
