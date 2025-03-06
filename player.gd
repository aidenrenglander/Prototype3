extends CharacterBody2D
const speed = 75.0
const accel = 1.0

var input: Vector2

func getInput():
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	return input.normalized()
	
func _process(delta):
	var playerInput = getInput()
	velocity = lerp(velocity, playerInput * speed, delta * accel)
	move_and_slide()
