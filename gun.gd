extends Area2D


func _physics_process(delta):
		var enemies_in_range = get_overlapping_bodies()
		if enemies_in_range.size() > 0: 
				look_at(get_global_mouse_position())


func shoot():
	const BULLET = preload("res://scenes/bullet.tscn") #preload("item path") is used to load something at start
	var new_bullet = BULLET.instantiate() 
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet) #.add_child(node) makes the node a child


func _on_timer_timeout() -> void:
	shoot()
	

func shorten_shoot_time() -> void:
	%BulletTimer.wait_time = StatsHolder.stat_options["Firing"][0]
