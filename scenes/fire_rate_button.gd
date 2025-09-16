extends Button

var stat = StatsHolder.stat_options["Firing"]
var stat_boost_increment = .1


func _on_score_screen_level_up() -> void:
	self.text = "x" + str(stat[1])


func _on_pressed() -> void:
	if StatsHolder.gems >= stat[1]: #if we have enough gold...
		StatsHolder.gems -= stat[1] #subtract the cost from our gems...
		stat[0] -= stat_boost_increment #alter the stat...
		stat[1] += 5 #increase the cost
		
		self.disabled = true #disable the button


func _on_upgrade_screen_visibility_changed() -> void:
	if visible == true:
		self.disabled = false
	else:
		self.disabled = true
