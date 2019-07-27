extends Control

#This metronome was made with alexfonska's Godot FMOD Integration repository on GitHub: https://github.com/alexfonseka/godot-fmod-integration

var finished = false
var color = Color(0, 0, 0, 0)

func _ready():
	
	$Popup.visible = 1
	$AdTimer.wait_time = 2
	$AdTimer.start()

func _on_AdTimer_timeout():
	if not finished:
		$AdTimer.wait_time = 0.025
		update()
	else:
		$Popup.visible = 0

func update():
	color.a += .05
	if color.a >.95:
		finished = true
	$Popup/Blackout.color = color
	print ($Popup/Blackout.color as String)
	$AdTimer.start()
