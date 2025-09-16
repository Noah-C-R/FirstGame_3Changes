extends Node

var level := 0
var stat_options = {"Health": [100, 5], "Movement": [600, 5],  "Firing": [.7, 5]} #[value, cost]

func update_costs():
	for stat in stat_options:
		stat_options[stat][1] *= level #the cost is a function of level


func _on_score_screen_level_up() -> void:
	update_costs()
