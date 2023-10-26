extends Area2D


@onready var sprite = $"sprite"

var left_swing = 10
var right_swing = -190
var swing_side = 1

var angle = 0
var offset = Vector2(0, -50)
var offset_rotated = Vector2(0, -25)

func _process(delta: float) -> void:
	pass
