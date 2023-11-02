extends Area2D

@export var player: CharacterBody2D

var attack_offset = 0
var attack_speed = 2
var swing_side = 1

var attacking = false
var damage_modifier = 5

func _process(delta: float) -> void:
	check_attack()

func check_attack() -> void:
	if Input.is_action_pressed("attack") || attacking:
		attacking = true
		attack_offset += attack_speed * swing_side
		
		if (attack_offset >= 360 || attack_offset <= -360):
			attacking = false
			attack_offset = 0
			swing_side *= -1

func take_damage(obj) -> void:
	obj.life -= self.damage_modifier + self.player.damage

func _on_body_entered(body) -> void:
	print(body.name)
	if body.is_in_group("enemy"):
		print("enemy")
		self.take_damage(body)
