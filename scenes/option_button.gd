extends OptionButton

func _on_item_selected(index: int) -> void:
	print(index)
	TranslationServer.set_locale(self.get_item_text(index))
