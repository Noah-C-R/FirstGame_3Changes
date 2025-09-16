extends CanvasLayer

func _on_score_screen_level_up() -> void:
	self.visible = true
	#pause the game -- may need to put menus under a separate node which does not get affected by pausing


func _on_exit_button_pressed() -> void:
	self.visible = false
	#unpause the game
