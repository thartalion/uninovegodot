extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)

func _physics_process(delta):
	motion.y += 20
	if Input.is_action_pressed("ui_right"):
		motion.x = 200
	elif Input.is_action_pressed("ui_left"):
		motion.x = -200
	else:
		motion.x = 0

	
	if Input.is_action_pressed("ui_up"):
		print("Up")
		motion.y = -600
	
	motion = move_and_slide(motion)
	print(motion)
	pass