extends Node2D

var preMenu = load("res://Ejecutable/Menu/Menu_niveles/Escena_menu_niveles.tscn")
var Menu
var My_timer = 0

func _on_Timer_timeout():
	My_timer += 1
	get_node("Label").set_text(str(3-My_timer))
	if My_timer > 3:
		Menu =preMenu.instance()
		get_node("/root/Nodo_Dios").add_child(Menu)
		get_node("/root/Nodo_Dios/Music_menu").play()
		$".".queue_free()
	get_node("Timer").start()
	pass # Replace with function body.
