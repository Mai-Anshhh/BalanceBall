extends Node2D

@onready var highscore: Label = $highscore

func _ready():
	Global.load_highscore()
	update_ui()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/game.tscn")

func update_ui():
	highscore.text = "Best: " + str(Global.highscore)
