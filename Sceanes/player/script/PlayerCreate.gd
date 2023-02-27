extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var play:PackedScene=preload("res://Sceanes/player/player.tscn")
var newPlayer

func _ready():
	newPlayer=play.instance()
	newPlayer.scale=Vector2(0.25,0.25)
	newPlayer.position=$estilingue/Position2D.global_position+Vector2(70,0)
	newPlayer.gravity_scale=0
	add_child(newPlayer)
	Global.existing=true

func _process(delta)->void:
	if Input.is_action_just_pressed("ui_touch") and !Global.existing:
		newPlayer=play.instance()
		newPlayer.scale=Vector2(0.25,0.25)
		newPlayer.position=$estilingue/Position2D.global_position+Vector2(70,0)
		newPlayer.gravity_scale=0
		add_child(newPlayer)
		Global.existing=true


func _on_VectorCreator_vector_created(vector):
	newPlayer.apply_impulse(Vector2.ZERO,vector*(vector.length()/45))
	newPlayer.gravity_scale=1
