extends Area2D


func _physics_process(delta):
		var enemies_in_range = get_overlapping_bodies()
		if enemies_in_range.size() > 0: 
				var target_enemy = enemies_in_range[0]
				look_at(target_enemy.global_position)


func shoot():
	const BULLET = preload("res://bullet.tscn") #preload("item path") is used to load something at start
	var new_bullet = BULLET.instantiate() 
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet) #.add_child(node) makes the node a child


func _on_timer_timeout() -> void:
	shoot()
