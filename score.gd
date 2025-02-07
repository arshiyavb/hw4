extends Label

var score = 0  # Score counter

@onready var score_label = %ScoreLabel  # Auto-finds the Label node

func _on_pressed():
	score += 1  # Increase score
	score_label.text = "Score: " + str(score)  # Update label text
	self.modulate = Color(randf(), randf(), randf())  # Change color
