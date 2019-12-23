extends Spatial

# Declare member variables here. Examples:
#var suelo 
var preCactus = load("res://Ejecutable/Juego/Escenarios/Niveles/modelos/cactus/cactus.tscn")
var Cactus
#var punto_Cactus = Vector3()
#var matr_Cactus

var b = 1
var punto = Vector3()
var matr_punt
var punto2 = Vector3()
var matr_punt2
var limite = 28

# Called when the node enters the scene tree for the first time.
func _ready():
	
	punto = get_node("Scene Root").get_global_transform()[3]
	matr_punt = get_node("Scene Root").get_global_transform()
	
#	punto.x = punto.x + b
#	matr_punt[3] = punto
#	get_node("Scene Root").set_global_transform(matr_punt)
#
	punto2 = get_node("Scene Root2").get_global_transform()[3]
	matr_punt2 = get_node("Scene Root2").get_global_transform()
#	punto2.x = punto2.x + b
#	matr_punt2[3] = punto2
#	get_node("Scene Root2").set_global_transform(matr_punt2)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if punto.x > limite:
		punto.x = -limite
		
		Cactus = preCactus.instance()
		get_node("Scene Root").add_child(Cactus)
		get_node("Scene Root/Position3D").get_global_transform()
#		get_child(Cactus)
#		punto_Cactus = punto
#		punto_Cactus.x = punto_Cactus.x + 60
#		matr_Cactus = matr_punt
#		matr_Cactus[0] = Vector3(1,0,0)
#		matr_Cactus[1] = Vector3(0,1,0)
#		matr_Cactus[2] = Vector3(0,0,1)
#		matr_Cactus[3] = matr_punt[3]
		Cactus.set_global_transform(get_node("Scene Root/Position3D").get_global_transform())
	
	if punto2.x > limite:
		punto2.x = -limite
		
	punto.x = punto.x + b
	matr_punt[3] = punto
	get_node("Scene Root").set_global_transform(matr_punt)
	
	punto2.x = punto2.x + b
	matr_punt2[3] = punto2
	get_node("Scene Root2").set_global_transform(matr_punt2)
#
	pass # Replace with function body.
