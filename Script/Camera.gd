extends Spatial

var camera_rotation_speed = PI/2
var max_zoom = 2.75
var min_zoom = 0.5
var zoom_speed = 0.1
var zoom = 1.5

func get_input_keyboard(delta):
	#Camera rotation 
	var y_rotation = 0
	if Input.is_key_pressed(KEY_D):
		y_rotation += 1
	if Input.is_key_pressed(KEY_A):
		y_rotation += -1
	rotate_object_local(Vector3.UP, y_rotation * camera_rotation_speed * delta);

	var x_rotation = 0
	if Input.is_key_pressed(KEY_W):
		x_rotation += -1
	if Input.is_key_pressed(KEY_S):
		x_rotation += 1
	$InnerGimbal.rotate_object_local(Vector3.RIGHT, x_rotation * camera_rotation_speed * delta);

func _unhandled_input(delta):
	# Zoom settings do not touch
	if Input.is_key_pressed(KEY_E):
		zoom -= zoom_speed
	if Input.is_key_pressed(KEY_Q):
		zoom += zoom_speed
	zoom = clamp(zoom, min_zoom, max_zoom)

func _process(delta):
	get_input_keyboard(delta)
	scale = lerp(scale, Vector3.ONE * zoom, zoom_speed)