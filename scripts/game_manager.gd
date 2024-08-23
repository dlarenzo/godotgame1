extends Node

# Create Variable for current score
var score = 0

@onready var score_label = $ScoreLabel

# Create own functions
func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."
