 extends Area2D

const SPEED = 100;

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		move(SPEED, 0, delta)
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0, delta)
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED, delta)

func move(xSpeed, ySpeed, delta):
	position.x += xSpeed * delta
	position.y += ySpeed * delta
