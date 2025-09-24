extends CanvasLayer

@onready var victory_audio_player: AudioStreamPlayer = $VictoryAudioPlayer
@onready var confetti_particles: Node2D = %ConfettiParticles


func _on_visibility_changed() -> void:
	confetti_particles.emitting = true
	%BackgroundAudioPlayer.stop()
	victory_audio_player.play()
