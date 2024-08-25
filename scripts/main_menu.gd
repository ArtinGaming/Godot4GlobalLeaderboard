extends Control

func _on_play_pressed() -> void:
	Global.display_speedrun_timer = true
	Global.speedrun_time = 0
	get_tree().change_scene_to_file("res://scenes/level.tscn")

func _on_leaderboard_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/leaderboard.tscn")
