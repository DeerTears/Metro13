extends Panel

#the pause/play var and the cooldown var to prevent pause/play from being spammed
var pplay = false
var cooldown = false

#our time signature (max beats), current beat and speedmulti
var timesig = 2
var beat = 0
var speedmulti = 0.50
#this one's just for the console at the moment
var BPM = 60

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_ENTER:
			#print("enter pressed")
			if not cooldown:
				pplay = not pplay
				$Metronome.wait_time = speedmulti
				$Maintainer.wait_time = speedmulti
				cooldown()
				print("song toggled: " + pplay as String)
				if pplay:
					startsong()
		if event.scancode == KEY_LEFT:
			if not cooldown:
				if timesig > 1:
					cooldown()
					timesig -= 1
					print("time signature bumped down to " + timesig as String)
		if event.scancode == KEY_RIGHT:
			if not cooldown:
				if timesig < 4:
					cooldown()
					timesig += 1
					print("time signature bumped up to " + timesig as String)
		if event.scancode == KEY_UP:
			#this could be it's own function where it does cooldown and bpm update outside of the speedmulti checks
			if not cooldown:
				if speedmulti > 0.1:
					cooldown()
					speedmulti -= 0.1
					bpmupdate()
					print("pseudotempo bumped up to " + BPM as String)
		if event.scancode == KEY_DOWN:
			#this could borrow that same function
			if not cooldown:
				if speedmulti < 2:
					cooldown()
					speedmulti += 0.1
					bpmupdate()
					print("pseudotempo bumped down to " + BPM as String)

#This should only fire if our cooldown isn't already on
# warning-ignore:function_conflicts_variable
func cooldown():
	cooldown = true
	$CoolTimer.start()
#Our cooldown timer is doing its thing until...
func _on_CoolTimer_timeout():
	cooldown = false
	print("-------")

#To avoid overflowing the beat, and to let notes play untruncated when we hit stop
func _on_Metronome_timeout():
	if pplay:
		beat += 1
	if beat > timesig:
		beat = 1
	playnote()
	$Metronome.wait_time = speedmulti
	$Metronome.start()
	
func startsong():
	beat = 1
	#get the thing started manually
	playnote()
	$Metronome.wait_time = speedmulti
	$Metronome.start()

func bpmupdate():
	BPM = 180-(speedmulti * 60)

func playnote():
	if beat == 1:
		$Hi.play()
		print("A!")
	if beat == 2:
		$Lo.play()
		print("B!")
	if beat == 3:
		$Lo.play()
		print("C!")
	if beat == 4:
		$Lo.play()
		print("D!")

