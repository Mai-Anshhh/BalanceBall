extends Node2D

var score = 0
@onready var timer: Timer = $Timer
@onready var scoredisplay: Label = $Control/scoredisplay


func _on_timer_timeout() -> void:
	score += 5
	$Control/scoredisplay.text = "Score: " + str(score)
