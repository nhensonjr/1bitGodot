extends Node

onready var highScoreLabel = $VBoxContainer/HighScoreLabel

func _ready():
	set_highScore_label()

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://StartMenu.tscn")

func set_highScore_label():
	var save_data = SaveAndLoad.load_data_from_file()
	highScoreLabel.text = "High Score :  " + str(save_data.highScore)