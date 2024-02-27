extends Control

var score = 0

func add_score():
	score += 1
	$ScoreLabel.text = str(score)
