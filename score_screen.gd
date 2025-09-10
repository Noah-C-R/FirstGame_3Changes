extends CanvasLayer

var score := 0

func add_points():
	score += 1
	%ScoreLabel.text = str(score)
