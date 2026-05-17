extends Node2D

@onready var timer: Timer = $Timer
@onready var scoredisplay: Label = $Control/scoredisplay
@onready var highscore_label: Label = $Control/HighscoreLabel

func _ready():
	Global.score = 0
	Global.load_highscore()
	update_ui()

func _on_timer_timeout():
	Global.score += 5
	if Global.score > Global.highscore:
		Global.highscore = Global.score
		Global.save_highscore()
	update_ui()

func update_ui():
	scoredisplay.text = "Score: " + str(Global.score)
	highscore_label.text = "Best: " + str(Global.highscore)
