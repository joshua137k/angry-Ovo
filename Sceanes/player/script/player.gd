extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	set_bounce(0.5)
	set_friction(0.2)



func _on_Timer_timeout():
	Global.existing=false
	$AnimatedSprite.play("explosion")
	queue_free()

