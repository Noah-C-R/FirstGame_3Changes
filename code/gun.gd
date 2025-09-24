extends Area2D

@onready var gun_audio_stream_player: AudioStreamPlayer = $GunAudioStreamPlayer


func _physics_process(_delta):
	look_at(get_global_mouse_position())

func shoot():
	const BULLET = preload("res://scenes/bullet.tscn") #preload("item path") is used to load something at start
	var new_bullet = BULLET.instantiate() 
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet) #.add_child(node) makes the node a child
	gun_audio_stream_player.play()

func shorten_shoot_time() -> void:
	%GunTimer.wait_time = clampf(StatsHolder.stat_options["Firing"][0], .01, 1)

func _on_gun_timer_timeout() -> void:
	shoot()

func _on_exit_button_pressed() -> void:
	shorten_shoot_time()
