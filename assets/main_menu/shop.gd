extends Node2D

var money = 100


@onready var label = $Label
@onready var buy_hay = $buy_hay
@onready var buy_app = $buy_apple

func _ready():
	label.text = str(money) 
	buy_app.pressed.connect(_on_buy_apple_pressed)
	buy_hay.pressed.connect(_on_buy_hay_pressed)

func _on_buy_hay_pressed():
	if money >= 5:
		money -= 50
	else:
		print("out of money")
	label.text = str(money)
	

func _on_buy_apple_pressed():
	if money >= 5000:
		money -= 5000
	else:
		pass
	label.text = str(money)
