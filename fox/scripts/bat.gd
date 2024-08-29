extends Node2D


@onready var anim = $AnimatedSprite2D
var SPEED = 300

func _ready():
	anim.play("bat_fly")

func _on_hurt_box_area_entered(area):
	queue_free()
 # Replace with function body.

	
