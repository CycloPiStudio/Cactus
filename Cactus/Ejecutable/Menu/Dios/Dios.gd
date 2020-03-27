extends Node
var Nivel_jugar
var puntosDios

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Music_menu".play()
	print("Nivel juegar: " , Nivel_jugar," nivel")
	print("Puntos dios: " , puntosDios ," puntos"  )

	pass # Replace with function body.

func sumaPuntos(puntosqsubes):
	puntosDios += puntosqsubes

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
