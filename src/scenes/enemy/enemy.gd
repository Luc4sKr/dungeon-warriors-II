extends CharacterBody2D

@export var player: Node2D
@onready var nav_agent: NavigationAgent2D = $"navigation_agent"
@onready var animation: AnimatedSprite2D = $"animation"

const speed: float = 150
var is_following: bool = false

func _physics_process(_delta: float) -> void:
	self.animate()
	self.move()
	self.verify_direction()

func _on_navigation_timer_timeout():
	make_path()
	
func make_path() -> void:
	nav_agent.target_position = player.global_position

func animate() -> void:
	if self.velocity != Vector2.ZERO:
		self.animation.play("run")
	else:
		self.animation.play("idle")

func move() -> void:
	velocity = Vector2.ZERO
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	if (is_following):
		velocity = dir * speed
		move_and_slide()

func verify_direction() -> void:
	if self.velocity.x > 0:
		self.animation.flip_h = false
	if self.velocity.x < 0:
		self.animation.flip_h = true

func _on_detection_area_body_entered(body):
	if (body.is_in_group("player")):
		is_following = true


func _on_detection_area_body_exited(body):
	if (body.is_in_group("player")):
		is_following = false
