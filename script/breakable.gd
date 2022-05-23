extends Area 
#It doesn't have to be an Area node it can be a Rigidbody as well.

# Setting a breakable scene.
export var resource : Resource

func break_object():
	# Instancing the breakable.
	var breakable = resource.instance()
	# Getting the parent of the Area node.
	var parent = self.get_parent()
	# Adding the breakable as a child of the parent.
	parent.add_child(breakable)
	#Setting the breakable's translation and rotation to the Area node.
	breakable.translation = self.translation
	breakable.rotation_degrees = self.rotation_degrees
	
	# Deleting the Area node.
	self.queue_free()
	pass
	
# This is just for the test purpose:
func _on_break_mouse_entered():
	break_object()
	
