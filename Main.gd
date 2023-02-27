extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var obj = preload("res://Sceanes/Predios/objetos.tscn")
onready var Spriteobj = preload("res://Sceanes/back/Sprite2.tscn")

func _ready():
	for i in range(int(rand_range(5,30))):
		var newobj=obj.instance()
		newobj.position=Vector2(newobj.larg*newobj.nodeSize*i*int(rand_range(4,10))+600,130)
		call_deferred("add_child",newobj)
	for i in range(10):
		var newS=Spriteobj.instance()
		newS.position=Vector2(498+i*1000,317)
		$Cenario/Sprite.call_deferred("add_child",newS)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
