extends CharacterBody2D

@onready var animation: AnimatedSprite2D = $"animation"
@onready var weapon_rotation: Node2D = $"weapon_rotation"
@onready var weapon: Area2D = $"weapon_rotation/weapon"

const speed = 300

func _physics_process(delta: float) -> void:
	self.move()
	self.animate()
	self.verify_direction()
	
	self.manage_weapon_rotation()
	
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

func manage_weapon_rotation() -> void:
	weapon_rotation.look_at(get_global_mouse_position())
	weapon_rotation.rotation_degrees += weapon.attack_offset + 180
