extends Node2D

export var larg=4
export var alt=5
onready var node = preload("res://Sceanes/Predios/block.tscn")
var nodeSize=64

func _ready():
	for i in range(larg):
		for j in range(alt):
			var newNode=node.instance()
			newNode.position=Vector2( nodeSize*i, nodeSize*j)
			call_deferred("add_child",newNode)
