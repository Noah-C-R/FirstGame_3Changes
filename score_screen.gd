extends CanvasLayer

var score := 0
var level_up_index := 0

signal level_up

func add_points():
	score += 1
	%ScoreLabel.text = str(score)
	
	if score == StatsHolder.level_thresholds[clamp(StatsHolder.level, 0, StatsHolder.level_thresholds.size() -1)]:
		if StatsHolder.level < StatsHolder.level_thresholds.size():
			StatsHolder.level += 1
		level_up.emit()
