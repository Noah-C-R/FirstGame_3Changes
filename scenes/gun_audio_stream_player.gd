extends Node
@onready var gun_audio_stream_player: AudioStreamPlayer = %GunAudioStreamPlayer


func _on_gun_timer_timeout() -> void:
	gun_audio_stream_player.play()
