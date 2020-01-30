extends Area2D

export(int) var SPEED = 50
var moving = false
onready var animPlayer = $AnimationPlayer
onready var pig = $Sprite
onready var collision = $Collision

func _process(delta):
	moving = false
	if Input.is_action_pressed("ui_right"):
		move(SPEED,0, delta)
		pig.flip_h = false
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0, delta)
		pig.flip_h = true
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED, delta)
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
		
	if moving == true:
		animPlayer.play("Run")
	else:
		animPlayer.play("Idle")
		

func move(xSpeed, ySpeed, delta):
	position.x += xSpeed * delta
	position.y += ySpeed * delta
	moving = true;

func _on_Pig_area_entered(area):
	pig.scale *= 1.1
	collision.scale *= 1.1
	area.queue_free()
