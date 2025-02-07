extends Button

var score = 0  # Score counter

@onready var score_label: Label = get_node("../Score")  # Adjust if needed

func _ready():
	if score_label == null:
		print("⚠️ ERROR: Score Label not found! Check node names.")
	else:
		print("✅ Score Label found:", score_label)

func _on_pressed():
	if score_label != null:
		score += 1
		score_label.text = "Score: " + str(score)  # Update label text
		self.modulate = Color(randf(), randf(), randf())  # Change color
	else:
		print("⚠️ ERROR: score_label is still null!")
