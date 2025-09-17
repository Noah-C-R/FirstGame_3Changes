extends Node

signal gems_changed

var level := 0
var gems := 0

var winning_score = 300
var level_thresholds = [5, 10, 25, 45, 60, 90, 150]

var stat_options = {"Health": [100, 5], "Movement": [600, 5],  "Firing": [.7, 5]} #[value, cost]

func update_gems(cost):
	gems -= cost
	print("Gems held is now: ", gems)
	
	gems_changed.emit()
