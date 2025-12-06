extends CanvasLayer

@onready var label: Label = $Panel/VBoxContainer/Label

# Declare a Timer variable
var timer: Timer 
var has_shown: bool = false #Flag to track if the CanvasLayer has been shown
var tutorial_step :int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if has_shown == false:
	# Create and configure the Timer node
		timer = Timer.new()
		add_child(timer)  # Add the timer as a child of CanvasLayer
		timer.wait_time = 5.0  # Set the timer to wait for 5 seconds
		timer.one_shot = true  # The timer will only trigger once
		timer.start()  # Start the timer

		# Connect the timeout signal of the timer to a function
		timer.timeout.connect(_on_timer_timeout)
		has_shown = true
	else:
		queue_free()
		
		
	pass # Replace with function body.
	
func _on_timer_timeout():
	# When the timer times out, remove the CanvasLayer
	queue_free()
	
