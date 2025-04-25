extends CharacterBody3D

@export var speed = 15.0

func _physics_process(delta):
	
	var input_vector := Vector3.ZERO
	
	input_vector.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector3.ZERO:
		velocity = input_vector * speed
	else:
		velocity = Vector3.ZERO
	
	move_and_slide()
