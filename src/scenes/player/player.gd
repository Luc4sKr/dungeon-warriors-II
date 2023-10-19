extends CharacterBody2D


var speed = 300

func _physics_process(delta: float) -> void:
	self.move()
	
func move() -> void:
	var direction: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	print(direction)
	
	velocity = direction * speed
	move_and_slide()
