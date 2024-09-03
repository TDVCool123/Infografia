extends Control

@onready var child_label = $PlayerAnonce
@onready var buttons = [
	$Button, $Button2, $Button3,
	$Button4, $Button5, $Button6,
	$Button7, $Button8, $Button9
]

var jugador = 1
var symbol = "x"
var used = [false, false, false, false, false, false, false, false, false]

func _ready():
	child_label.text = "Inicia el jugador " + str(jugador)
	for i in range(buttons.size()):
	
		buttons[i].connect("button_down", _on_button_pressed.bind(i))

func _on_button_pressed(index):
	if not used[index]:
		buttons[index].text = symbol
		used[index] = true
		
		# Cambiar el símbolo
		if symbol == "x":
			symbol = "o"
		else:
			symbol = "x"
		
		# Cambiar el jugador
		if jugador == 1:
			jugador = 2
		else:
			jugador = 1
		
		child_label.text = "Turno del jugador " + str(jugador)
		
		
