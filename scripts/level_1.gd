extends Node3D

@export_file("*.tscn") var next_level_scene: String = "res://scenes/level_2.tscn"

var total_gates: int = 0
var count: int = 0
var finish: bool = false

func _ready() -> void:
	var gates = get_tree().get_nodes_in_group("gates")
	total_gates = gates.size()
	
	for gate in gates:
		if gate.has_signal("body_entered"):
			gate.body_entered.connect(_on_any_gate_entered)
			
	var final_gates = get_tree().get_nodes_in_group("final_gate")
	if final_gates.size() > 0:
		if final_gates[0].has_signal("body_entered"):
			final_gates[0].body_entered.connect(_on_final_gate_entered)

func _physics_process(delta: float) -> void:
	if has_node("Player"):
		$Player/Neck/Camera3D/Label.text = "Gates left: " + str(total_gates - count)
		
	if finish and count >= total_gates:
		if next_level_scene != "":
			get_tree().change_scene_to_file(next_level_scene)

func _on_any_gate_entered(body: Node3D) -> void:
	if body.name == "Player" or body.is_in_group("player"):
		count += 1

func _on_final_gate_entered(body: Node3D) -> void:
	if body.name == "Player" or body.is_in_group("player"):
		finish = true
