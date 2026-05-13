extends RigidBody2D

@export var move_force := 400.0

func _physics_process(_delta):
	if Input.is_action_pressed("ui_left"):
		apply_central_force(Vector2.LEFT * move_force)

	if Input.is_action_pressed("ui_right"):
		apply_central_force(Vector2.RIGHT * move_force)
