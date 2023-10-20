extends CharacterBody2D


@onready var animation: AnimatedSprite2D = $"animation"

var speed = 300

func _physics_process(delta: float) -> void:
	self.move()
	self.animate()
	self.verify_direction()
	
func move() -> void:
	var direction: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	self.velocity = direction * speed
	move_and_slide()
	
func animate() -> void:
	if self.velocity != Vector2.ZERO:
		self.animation.play("run")
	else:
		self.animation.play("idle")

func verify_direction() -> void:
	if self.velocity.x > 0:
		self.animation.flip_h = false
	if self.velocity.x < 0:
		self.animation.flip_h = true
