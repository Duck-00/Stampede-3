extends Node2D

func _input(event):
	if event.is_action_pressed("Back_esc"):
		get_tree().change_scene_to_file("res://main_menu.tscn")


@onready var label = $Label
@onready var buy_hay = $buy_not_a_gun
@onready var buy_apple = $buy_lace_hay
@onready var buy_moldy_hay = $buy_bull
@onready var buy_protein = $buy_unfat

func _ready():
	label.text = str(GameData.money) 
	buy_apple.pressed.connect(_on_buy_apple_pressed)
	buy_hay.pressed.connect(_on_buy_hay_pressed)
	buy_moldy_hay.pressed.connect(_on_buy_moldy_hay_pressed)
	buy_protein.pressed.connect(_on_buy_protein_pressed)


func _on_buy_hay_pressed():
	if GameData.money >= 1000000:
			GameData.money -= 1000000
			GameData.speed -= INF
			crash()
			
	else:
		print("out of money")
	label.text = str(GameData.money)
	

func crash():
	crash()

func _on_buy_apple_pressed():
	if GameData.money >= 10000:
		GameData.money -= 10000
		GameData.speed += INF
	else:
		print("out of money")
	label.text = str(GameData.money)

func _on_buy_protein_pressed():
	if GameData.money >= 100000:
		GameData.money -= 100000
		GameData.speed += 1000
	else:
		print("out of money")
	label.text = str(GameData.money)
	
func _on_buy_moldy_hay_pressed():
	if GameData.money >= 5000:
		GameData.money -= 5000
		GameData.speed -= 2000
	else:
		print("out of money")
	label.text = str(GameData.money)
