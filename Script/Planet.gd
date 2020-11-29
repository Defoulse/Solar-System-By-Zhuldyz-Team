extends Spatial

export(float) var gravity = 1.0
export(float) var selfRotation = 1.0
export(float) var distance = 0.0
var lookAt:float = 0.0

func _ready():
	set_position()


func _process(delta):
	rotate_orbit(delta)


func rotate_orbit(time):
	if self.get_parent().is_in_group("Star") == true:
		#self.rotate_y(time / pow(distance, self.get_parent().gravity))
		self.rotate_y(time * (get_parent().gravity / (distance + 100)))
		
	self.get_node("MeshInstance").rotate_y((selfRotation * time) / 100)


func set_position():
	if self.get_parent().is_in_group("Star") or self.get_parent().is_in_group("Planet") == true:
		if self.distance != 0:
			self.translation = Vector3()
			self.get_node("MeshInstance").translation = Vector3(0, 0, -distance)
		else:
			distance = self.transform.origin.distance_to(self.get_parent().transform.origin)
			self.translation = Vector3()
			self.get_node("MeshInstance").translation = Vector3(0, 0, -distance)
