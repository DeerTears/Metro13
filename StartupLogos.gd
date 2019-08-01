extends Control

#This metronome was made with alexfonska's Godot FMOD Integration repository on GitHub: https://github.com/alexfonseka/godot-fmod-integration

var finished = false
var color = Color(0, 0, 0, 0)

func _ready():
	
	$Popup.visible = 1
	$AdTimer.wait_time = 2
	$AdTimer.start()

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_BRACELEFT:
			if $Clock/Hi.volume_db < -19.5:
				$Clock/Hi.volume_db = -80
				lovol()
				print ("Volume Muted.")
			else:
				$Clock/Hi.volume_db -= .5
				lovol()
				print ("Volume: " + $Clock/Hi.volume_db as String)
		if event.scancode == KEY_BRACERIGHT:
			if $Clock/Hi.volume_db < -.5:
				if $Clock/Hi.volume_db == -80:
					$Clock/Hi.volume_db = -20
					lovol()
					print ("Volume: " + $Clock/Hi.volume_db as String)
				else:
					$Clock/Hi.volume_db += .5
					lovol()
					print ("Volume: " + $Clock/Hi.volume_db as String)

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

#this sets our low click sound to the same volume as the high click sound

func lovol():
	$Clock/Lo.volume_db = $Clock/Hi.volume_db