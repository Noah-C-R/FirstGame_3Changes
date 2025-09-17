extends CharacterBody2D

signal on_death

var health := 2
var speed := 300.0

@onready var player = get_node("/root/Game/Player")

func _ready():
	%Slime.play_walk()

func _physics_process(_delta):
	var direction = global_position.direction_to(player.global_position) #direction_to returns a vector to a target position
	velocity = direction * speed
	move_and_slide()


func take_damage():
	health -= 1
	%Slime.play_hurt()
	
	if health == 0:
		queue_free()
		
		get_parent().get_node("ScoreScreen").add_points()
		
		spawn_gem()
		
		const SMOKE_EXPLOSION = preload("res://smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_EXPLOSION.instantiate()
		get_parent().add_child(smoke)
		smoke.global_position = global_position

func spawn_gem():
	const GEM = preload("res://items/gem.tscn")
	var gem_instance = GEM.instantiate()
	get_parent().call_deferred("add_child", gem_instance)
	gem_instance.global_position = global_position
