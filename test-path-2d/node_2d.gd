extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Path2D/PathFollow2D.progress=randi()
	var roration=$Path2D/PathFollow2D.rotation+ PI/2
	var speed=Vector2(200,0)
	$RigidBody2D.position=$Path2D/PathFollow2D.position
	$RigidBody2D.rotation=roration
	$RigidBody2D.linear_velocity=speed.rotated(roration)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
