extends AnimatedSprite2D
var moving_right = true


var SPEED = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving_right:
		position.x += delta * SPEED
	else:
		position.x -= delta * SPEED
	
	print(position)

	# Cambiar la dirección cuando se alcanza el límite de 40 píxeles
	if position.x >= 40.0:
		moving_right = false
	elif position.x <= 0.0:
		moving_right = true
