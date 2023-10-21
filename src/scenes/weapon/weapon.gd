extends Area2D


var left_swing = 10
var right_swing = -190

var swing_side = 1
var angle = 0
var offset_rotated = 0
var offset = Vector2(0, -50)

func _process(delta: float) -> void:
	pass
	#self.rotate_sword()
	
func rotate_sword(player: CharacterBody2D) -> void:
	var mouse_pos = get_global_mouse_position()
	
	var dx = mouse_pos.x - self.player.global_position.x
	var dy = mouse_pos.y - self.player.global_position.y
	
	if (self.swing_side == 1):
		angle = (180 / PI) * atan2(-self.swing_side * dy, dx) + self.left_swing
	else:
		angle = (180 / PI) * atan2(self.swing_side * dy, dx) + self.right_swing
	
	self.offset_rotated = Vector2(0, -35).rotated(-angle)
	self.global_position = player.global_position + offset_rotated
	self.rotation_degrees = angle
	
func swing(player: CharacterBody2D) -> void:
	angle += 20 * self.swing_side
	offset_rotated = self.offset.rotated(-angle)
	
	self.global_position = Vector2(player.global_position + offset_rotated)

