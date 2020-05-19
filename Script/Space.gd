extends Spatial

func _ready():
	var mat = ResourceLoader.load("res://Material/Planet.tres");
	var mat2 = ResourceLoader.load("res://Material/Planet2.tres");
	var mat3 = ResourceLoader.load("res://Material/Planet3.tres");
	var mat4 = ResourceLoader.load("res://Material/Planet4.tres");
	var mat5 = ResourceLoader.load("res://Material/Planet5.tres");
	var mat6 = ResourceLoader.load("res://Material/Planet6.tres");
	var mat7 = ResourceLoader.load("res://Material/Planet7.tres");
	var mat8 = ResourceLoader.load("res://Material/Planet8.tres");
	
	var new_texture = ImageTexture.new();
	var new_texture2 = ImageTexture.new();
	var new_texture3 = ImageTexture.new();
	var new_texture4 = ImageTexture.new();
	var new_texture5 = ImageTexture.new();
	var new_texture6 = ImageTexture.new();
	var new_texture7 = ImageTexture.new();
	var new_texture8 = ImageTexture.new();
	
	for child in range($Sun.get_child_count()):
		if ($Sun.get_child(0).get_index() == child):
				continue
		elif ($Sun.get_child(1).get_index() == child):
			new_texture.load("res://Texture/Planet/Mercury.jpg")
			mat.albedo_texture = new_texture
			mat.emission_texture = new_texture
			new_texture.get_format()
		elif ($Sun.get_child(2).get_index() == child):
			new_texture2.load("res://Texture/Planet/Venus.jpg")
			mat2.albedo_texture = new_texture2
			mat2.emission_texture = new_texture2
		elif ($Sun.get_child(3).get_index() == child):
			new_texture3.load("res://Texture/Planet/Earth.jpg")
			mat3.albedo_texture = new_texture3
			mat3.emission_texture = new_texture3
		elif ($Sun.get_child(4).get_index() == child):
			new_texture4.load("res://Texture/Planet/Mars.jpg")
			mat4.albedo_texture = new_texture4
			mat4.emission_texture = new_texture4
		elif ($Sun.get_child(5).get_index() == child):
			new_texture5.load("res://Texture/Planet/Jupiter.jpg")
			mat5.albedo_texture = new_texture5
			mat5.emission_texture = new_texture5
		elif ($Sun.get_child(6).get_index() == child):
			new_texture6.load("res://Texture/Planet/Saturn.jpg")
			mat6.albedo_texture = new_texture6
			mat6.emission_texture = new_texture6
		elif ($Sun.get_child(7).get_index() == child):
			new_texture7.load("res://Texture/Planet/Uranus.jpg")
			mat7.albedo_texture = new_texture7
			mat7.emission_texture = new_texture7
		elif ($Sun.get_child(8).get_index() == child):
			new_texture8.load("res://Texture/Planet/Neptune.jpg")
			mat8.albedo_texture = new_texture8
			mat8.emission_texture = new_texture8
	

func _input(event):
	if Input.is_key_pressed(KEY_R):
		get_tree().reload_current_scene()
	if Input.is_key_pressed(KEY_SPACE):
		if $Base/InnerGimbal/Camera.make_current():
			$Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_1):
		if $Sun/Planet/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_2):
		if $Sun/Planet2/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet2/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_3):
		if $Sun/Planet3/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet3/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_4):
		if $Sun/Planet4/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet4/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_5):
		if $Sun/Planet5/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet5/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_6):
		if $Sun/Planet6/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet6/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_7):
		if $Sun/Planet7/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet7/Base/InnerGimbal/Camera.clear_current(true)
	if Input.is_key_pressed(KEY_8):
		if $Sun/Planet8/Base/InnerGimbal/Camera.make_current():
			$Sun/Planet8/Base/InnerGimbal/Camera.clear_current(true)