extends CanvasLayer

var score := 0
var level_up_interval := 5
signal level_up

func add_points():
	score += 1
	%ScoreLabel.text = str(score)
	
	if score % level_up_interval == 0:
		StatsHolder.level += 1
		level_up.emit()
