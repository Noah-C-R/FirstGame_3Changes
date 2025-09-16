extends CanvasLayer

var score := 0
signal level_up

func add_points():
	score += 1
	%ScoreLabel.text = str(score)
	
	if score % 10 == 0:
		StatsHolder.level += 1
		level_up.emit()
