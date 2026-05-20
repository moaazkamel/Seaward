extends CharacterBody3D

@export var speed: float = 20.0



@export var turn_speed: float = 1.2


@export var drift_grip: float = 2.0

func _physics_process(delta: float) -> void:
	
	
	
	var turn = Input.get_axis("ui_right", "ui_left")
	rotate_y(turn * turn_speed * delta)
	
	

	var move = Input.get_axis("ui_up", "ui_down")
	
	
	var direction = -transform.basis.z

	var desired_velocity = direction * (move * speed)
	
	
	
	
	velocity = velocity.lerp(desired_velocity, drift_grip * delta)

	move_and_slide()
