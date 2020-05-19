extends Spatial

export var Orbit_Velocity = 0.0
export var Self_Velocity = 0.0
export var Size = 0
var lookPos

func _ready():
	if Size != 0:
		if Size < 2:
			self.scale_object_local(Vector3(Size, Size, Size))
		else:
			Size = 2
			self.scale_object_local(Vector3(Size, Size, Size))

func _process(delta):
	if Orbit_Velocity != 0.0:
		lookPos = self.get_transform().origin
		for child in range(self.get_child_count()):
			if self.get_child(0).get_index() == child:
				pass
			elif self.get_child(1).get_index() == child:
				var Distance = self.get_child(1).get_transform().origin.distance_to(lookPos)
				self.get_child(1).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(1).translate(Vector3(delta *(Orbit_Velocity / 100), 0, (-Distance + delta) / 990))
				
			elif self.get_child(2).get_index() == child:
				var Distance = self.get_child(2).get_transform().origin.distance_to(lookPos)
				self.get_child(2).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(2).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 2000))
				
			elif self.get_child(3).get_index() == child:
				var Distance = self.get_child(3).get_transform().origin.distance_to(lookPos)
				self.get_child(3).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(3).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 3200))
				
			elif self.get_child(4).get_index() == child:
				var Distance = self.get_child(4).get_transform().origin.distance_to(lookPos)
				self.get_child(4).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(4).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 4800))
				
			elif self.get_child(5).get_index() == child:
				var Distance = self.get_child(5).get_transform().origin.distance_to(lookPos)
				self.get_child(5).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(5).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 6000))
				
			elif self.get_child(6).get_index() == child:
				var Distance = self.get_child(6).get_transform().origin.distance_to(lookPos)
				self.get_child(6).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(6).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 9000))
				
			elif self.get_child(7).get_index() == child:
				var Distance = self.get_child(7).get_transform().origin.distance_to(lookPos)
				self.get_child(7).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(7).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) / 12000))
				
			elif self.get_child(8).get_index() == child:
				var Distance = self.get_child(8).get_transform().origin.distance_to(lookPos)
				self.get_child(8).look_at(lookPos, Vector3(0, 1, 0))
				self.get_child(8).translate(Vector3(delta * (Orbit_Velocity / 100), 0, (-Distance + delta) /  15000))
				
				
	
	if Self_Velocity != 0.0:
		self.rotate(Vector3(0, 1, 0), delta * ((Self_Velocity - Orbit_Velocity) / 100))