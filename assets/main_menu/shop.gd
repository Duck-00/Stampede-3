extends Node2D	
var money: int = 10000


@onready var label = $Label
@onready var buy_hay = $buy_hay
@onready var buy_apple = $buy_apple
@onready var buy_moldy_hay = $buy_moldy_hay
@onready var buy_protein = $buy_protein

func _ready():
	label.text = str(GameData.money) 
	buy_apple.pressed.connect(_on_buy_apple_pressed)
	buy_hay.pressed.connect(_on_buy_hay_pressed)
	buy_moldy_hay.pressed.connect(_on_buy_moldy_hay_pressed)
	buy_protein.pressed.connect(_on_buy_protein_pressed)
	
func _input(event):
	if event.is_action_pressed("Back_esc"):
		get_tree().change_scene_to_file("res://main_menu.tscn")	

func _on_buy_hay_pressed():
	if GameData.money >= 50:
			GameData.money -= 50
			GameData.speed += 500
	else:
		print("out of money")
	label.text = str(GameData.money)
	

func _on_buy_apple_pressed():
	if GameData.money >= 5000:
		GameData.money -= 5000
		GameData.speed += 50
	else:
		print("out of money")
	label.text = str(GameData.money)

func _on_buy_protein_pressed():
	if GameData.money >= 1000:
		GameData.money -= 1000
		GameData.speed += 15
	else:
		print("out of money")
	label.text = str(GameData.money)
	
func _on_buy_moldy_hay_pressed():
	if GameData.money >= 5:
		GameData.money -= 5
		GameData.speed -= 20
	else:
		print("out of money")
	label.text = str(GameData.money)
