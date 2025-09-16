extends CharacterBody2D #extends means it adds code on top of this node's library, ctrl click to see more about it

signal health_depleted

var health
var walk_speed

func _ready():
	set_stats()

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * walk_speed
	move_and_slide()

	if velocity.length() > 0.0: #.length() for a vector returns it as a float
		%HappyBoo.play_walk_animation() 
	else:
		%HappyBoo.play_idle_animation()
	
	const DAMAGE_RATE = 5.0
	var overlapping_mobs = %HurtBox.get_overlapping_bodies() #check to see how many are overlapping to do a dmg check
	if overlapping_mobs.size() > 0:
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%ProgressBar.value = health
		
		if health <= 0.0:
			health_depleted.emit()

func set_stats():
	health = StatsHolder.stat_options["Health"][0]
	walk_speed = StatsHolder.stat_options["Movement"][0]


func _on_stats_holder_stat_upgrade() -> void:
	set_stats()
	print("Health is now: ", str(health))
	print("Movement speed is now: ", str(walk_speed))
