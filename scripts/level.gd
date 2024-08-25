extends Node2D

func _on_submit_pressed() -> void:
	Global.display_speedrun_timer = false
	Global.speedrun_time_end = Global.speedrun_time
	$GetPlayerName.show()
	
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
