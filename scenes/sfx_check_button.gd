extends CheckButton

var audio_bus = AudioServer.get_bus_index("SoundFX")

func _on_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(audio_bus, !toggled_on)
