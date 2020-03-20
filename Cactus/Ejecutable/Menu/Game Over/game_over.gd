extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var preMenu = load("res://Ejecutable/Menu/Menu_entrar/Menu_entrar.tscn")
var Menu

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hub_game_over/Hub3puntos/Label" , get_node("Hub_game_over/Hub3puntos/Label"))
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	Menu =preMenu.instance()
	get_node("/root/Nodo_Dios").add_child(Menu)
	$".".queue_free()
	pass # Replace with function body.
