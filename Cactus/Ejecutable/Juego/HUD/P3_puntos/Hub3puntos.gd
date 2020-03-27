extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	sumaPuntos(1000)
#	get_node("/root/Nodo_Dios").sumaPuntos(1000)
	pass # Replace with function body.
	

func _on_Timer_timeout():
	get_node("Label").set_text(str(get_node("/root/Nodo_Dios").puntosDios) + " puntos")
	pass # Replace with function body.
