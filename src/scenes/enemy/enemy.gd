extends CharacterBody2D

@export var player: Node2D
@onready var nav_agent: NavigationAgent2D = $"navigation_agent"
@onready var animation: AnimatedSprite2D = $"animation"

const speed: float = 150
var life: float = 100

func _physics_process(_delta: float) -> void:
	self.animate()
	self.move()
	self.verify_direction()
	self.life_manager()

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
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()

func life_manager() -> void:
	if self.life <= 0:
		self.queue_free()

func verify_direction() -> void:
	if self.velocity.x > 0:
		self.animation.flip_h = false
	if self.velocity.x < 0:
		self.animation.flip_h = true

