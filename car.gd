extends VehicleBody3D

@export var wheels: Array[VehicleWheel3D];
@export var wheel_friction_slip:float = 10.5
@export var suspension_stiff_value:float = 20.0

@export var max_steering: float = 0.7
@export var engine_power:float = 300
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	for wheel in wheels:
		wheel.wheel_friction_slip = wheel_friction_slip
		wheel.suspension_stiffness = suspension_stiff_value

func _physics_process(delta: float) -> void:
	steering = move_toward(steering,Input.get_axis("ui_right","ui_left") * max_steering,delta * 10.0)
	engine_force = Input.get_axis("ui_down","ui_up") * engine_power
	pass
