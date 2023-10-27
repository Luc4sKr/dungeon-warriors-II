extends Area2D

var attack_offset = 0
var attack_speed = 2
var swing_side = 1

var attacking = false

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

func _on_body_entered(body) -> void:
	if body.is_in_group("enemy"):
		pass
