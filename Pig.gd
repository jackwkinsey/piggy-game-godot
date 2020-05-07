extends Area2D

const SPEED = 100;

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		move(SPEED * delta, 0)
	if Input.is_action_pressed("ui_left"):
		move(-SPEED * delta, 0)
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED * delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED * delta)

func move(xSpeed, ySpeed):
	position.x += xSpeed
	position.y += ySpeed
