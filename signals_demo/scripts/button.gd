extends Button

@export var label: Label

func _on_button_down() -> void:
	print("boton 1 ha sido presionado!")
	# cambiar etiqueta
	label.text = "HOLA!"
	text = "Boton 1"
