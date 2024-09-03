extends Node2D

var vida = 100
var player_detected = false

#@onready var anim = $AnimatedSprite2D
var SPEED = 300

#func _ready():
#	anim.play("bat_fly")

func _on_hurt_box_area_entered(area):
	print("OUCH" )
	vida -=15
	if vida <= 0:
		queue_free()
 # Replace with function body.

	


func _on_player_detect_area_area_entered(area):
	player_detected = transform # Replace with function body.
