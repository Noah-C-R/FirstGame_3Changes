extends CanvasLayer


func show_final_score():
	%FinalScoreLabel.text = str("Score: ", %ScoreLabel.text)
