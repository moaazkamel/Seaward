extends CharacterBody3D


@export var acceleratrion: float = 10.0
@export var max_speed: float = 40.0
@export var turn_speed: float = 1.2
@export var drag: float = 0.2

var Velocity: Vector3 = Vector3.ZERO
var direction: Vector3 = Vector3.FORWARD


func _process(delta: float) -> void:
	if Input.is_action_pressed('ui_down'):
		Velocity += direction * acceleratrion *delta
	elif Input.is_action_pressed('ui_up'):
		Velocity -= direction * acceleratrion *delta
	
	if Input.is_action_pressed('ui_left'):
		rotate_y(turn_speed * delta)
	elif Input.is_action_pressed('ui_right'):
		rotate_y(-turn_speed * delta)

	Velocity = Velocity.lerp(Vector3.ZERO, drag *delta)
	
	if Velocity.length() > max_speed:
		Velocity = Velocity.normalized() * max_speed
		
	translate(Velocity * delta)
		
	direction = -transform.basis.z
