extends Node

onready var animationPlayer: AnimationPlayer = $AnimationPlayer
onready var rocket = $RocketShip

func _on_LaunchButton_pressed():
	animationPlayer.play("Launch")
	rocket.texture = load("res://Resources/RocketShipLaunch.png")
	

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
