extends Node3D

var count = 0

var finish = false

var pas = false


func _process(delta: float) -> void:
	if finish == true:
		if count == 9:
			pas = true	
	

	if pas == true:
		get_tree().change_scene_to_file('res://scenes/level_2.tscn')


func _on_gate_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1
	



func _on_gate_2_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_3_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_4_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_5_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_6_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_7_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_8_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_gate_9_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		count += 1


func _on_finall_gate_body_entered(body: Node3D) -> void:
	if body.name == 'Player':
		finish = true
