extends CharacterBody2D

const SPEED = 20

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		position.x -= SPEED
	if Input.is_action_pressed("right"):
		position.x += SPEED
	if Input.is_action_pressed("up"):	
		position.y -= SPEED
	if Input.is_action_pressed("down"):
		position.y += SPEED
