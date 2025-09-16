extends Sprite2D

var travelled_dist := 0
const SPEED := 5
const RANGE := 10

func show_label(key_string : String) -> void:
	self.visible = true
	%Label.text = StatsHolder.stat_options[key_string][2]
	modulate = StatsHolder.stat_options[key_string][1]

func _physics_process(delta: float) -> void:
	var direction = Vector2.UP.rotated(rotation)
	position += direction * SPEED * delta
	
	travelled_dist += SPEED * delta
	if travelled_dist > RANGE:
		self.visible = false
