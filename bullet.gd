extends Area2D

var travelled_dist := 0
const SPEED := 1000
const RANGE := 1200

func _physics_process(delta: float) -> void:
	var direction = Vector2.RIGHT.rotated(rotation) #gives direction bullet is facing
	position += direction * SPEED * delta
	
	travelled_dist += SPEED * delta
	if travelled_dist > RANGE:
		queue_free() #removes the object


func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
