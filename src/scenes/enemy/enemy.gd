extends CharacterBody2D

@export var player: Node2D
@onready var nav_agent = $"navigation_agent"

const speed: float = 200

func _physics_process(_delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func make_path() -> void:
	nav_agent.target_position = player.global_position

func _on_navigation_timer_timeout():
	make_path()
