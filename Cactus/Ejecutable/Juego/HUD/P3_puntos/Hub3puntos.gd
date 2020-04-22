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
	actualizar_puntos()
	pass # Replace with function body.

func actualizar_puntos():
	get_node("Label").set_text(str(get_node("/root/Nodo_Dios").puntosDios) + " puntos")
#	get_node("Luz-rayos").escala_energia()

func combo():
	get_node("Luz-rayos").escala_energia()
	print("combo")