extends Node

signal gems_changed

var level := 0
var gems := 10

var stat_options = {"Health": [100, 5], "Movement": [600, 5],  "Firing": [.7, 5]} #[value, cost]

func update_gems(cost):
	gems -= cost
	print("Gems held is now: ", gems)
	
	gems_changed.emit()
	
