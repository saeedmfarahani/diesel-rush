extends Node3D

@export var target: Node3D
@export var smoothing_speed: float = 5.0

func _physics_process(delta: float) -> void:
	# Snap position
	global_position = target.global_position
	
	# Smoothly interpolate rotation using the shortest path
	global_rotation.y = lerp_angle(global_rotation.y, target.global_rotation.y, delta * smoothing_speed)
