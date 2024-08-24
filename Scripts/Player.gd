extends CharacterBody2D

var Speed = 2000

func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x = -Speed * delta
	elif Input.is_action_pressed("right"):
		velocity.x = Speed * delta
	elif Input.is_action_pressed("up"):
		velocity.y = -Speed * delta
	elif Input.is_action_pressed("down"):
		velocity.y = Speed * delta
	move_and_slide()
