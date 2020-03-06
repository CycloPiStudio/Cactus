extends Spatial

# Declare member variables here. Examples:
#var suelo 
var preCactus = load("res://Ejecutable/Juego/Enemigo/Enemigo 1/Enemigo.tscn")
var Cactus
var punto_Cactus = Vector3()
var matr_Cactus
var cont_Cactus = 0

var b = 1.1
var punto = Vector3()
var matr_punt
var punto2 = Vector3()
var matr_punt2
var limite = 28

var rng = RandomNumberGenerator.new()


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
		
		
		meter_cactus()

	
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

func meter_cactus():
	cont_Cactus += 1
	for i in range(cont_Cactus-1):
		print("pongo","cactus",i)
		Cactus = preCactus.instance()
		get_node("Scene Root").add_child(Cactus)
		print("nuevo cactus", get_node("Scene Root/Position3D").get_global_transform()[3].z)
		punto_Cactus = get_node("Scene Root/Position3D").get_global_transform()[3]
		rng.randomize()
		print(rng.randf_range(0.0, 3.6))
		punto_Cactus.z = punto_Cactus.z + rng.randf_range(0.0, 3.6)
		punto_Cactus.x = punto_Cactus.x + ((i+1))
		matr_Cactus = get_node("Scene Root/Position3D").get_global_transform()
		matr_Cactus[3] = punto_Cactus
		Cactus.set_global_transform(matr_Cactus)
	