extends Node2D

func spawn_enemy():
	var new_enemy = preload("res://enemy.tscn").instantiate() #despite the syntax Godot knows to only call this once
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)


func _on_timer_timeout() -> void:
	spawn_enemy()


func _on_player_health_depleted() -> void:
	%GameOverScreen.visible = true


func _on_button_pressed() -> void: #used to reload scene
	get_tree().paused = false
	get_tree().reload_current_scene()
