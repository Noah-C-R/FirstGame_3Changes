extends Node

@onready var audio_stream_player: AudioStreamPlayer = %AudioStreamPlayer


func display_particles(key: String, position: Vector2):
	var effects_dict = {"Sparks": [preload("res://particles/gem_particles.tscn"), preload("res://audio/ding.wav")],
 "Stars": [preload("res://particles/stars_partcles.tscn"), preload("res://audio/level_up.mp3")]}
	
	var FX = effects_dict[key][0].instantiate()
	var SFX_stream = effects_dict[key][1]

	add_child(FX)
	FX.position = position
	
	FX.emitting = true
	
	audio_stream_player.stream = SFX_stream
	audio_stream_player.play()
