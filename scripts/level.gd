extends Node2D

var score = 0

@onready var score_label: Label = $Control/Score

func _on_increase_pressed() -> void:
	score += 10

func _on_decrease_pressed() -> void:
	score -= 10

func _physics_process(delta: float) -> void:
	change_text()
	
func change_text():
	score_label.text = "Score: " + str(score)

func _on_submit_pressed() -> void:
	Global.score = score
	$GetPlayerName.show()
	
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
