extends Control

func _ready():
	pass

func _on_Button_pressed():
	get_parent().get_node("Sun").show()
	get_node("CenterContainer/Sun").hide()
	get_node("CenterContainer/Planets").show()

func _on_Mercury_pressed():
	get_parent().get_node("Sun/Planet").show()


func _on_Venus_pressed():
	get_parent().get_node("Sun/Planet2").show()


func _on_Earth_pressed():
	get_parent().get_node("Sun/Planet3").show()


func _on_Mars_pressed():
	get_parent().get_node("Sun/Planet4").show()


func _on_Jupiter_pressed():
	get_parent().get_node("Sun/Planet5").show()


func _on_Saturn_pressed():
	get_parent().get_node("Sun/Planet6").show()


func _on_Uranus_pressed():
	get_parent().get_node("Sun/Planet7").show()


func _on_Neptune_pressed():
	get_parent().get_node("Sun/Planet8").show()

func _on_Mercury_Size1_pressed():
	get_parent().get_node("Sun/Planet").Size(2)


func _on_Mercury_Size2_pressed():
	get_parent().get_node("Sun/Planet").get_script().Size = 2


func _on_Mercury_Orbit_pressed():
	get_parent().get_node("Sun/Planet").Orbit_Velocity = 5000
