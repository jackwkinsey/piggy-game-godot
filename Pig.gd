 extends Area2D

export(int) var SPEED = 100;

onready var animation_player = $AnimationPlayer
onready var sprite = $Sprite

var moving = false

func _process(delta):
	moving = false
	
	if Input.is_action_pressed("ui_right"):
		move(SPEED, 0, delta)
		sprite.flip_h = false
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0, delta)
		sprite.flip_h = true
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED, delta)
		
	if moving:
		animation_player.play("Run")
	else:
		animation_player.play("Idle")

func move(xSpeed, ySpeed, delta):
	moving = true
	position.x += xSpeed * delta
	position.y += ySpeed * delta

func _on_Pig_area_entered(area):
	area.queue_free();
	scale *= 1.1
