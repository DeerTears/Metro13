extends Panel

#Metronome Code

#the pause/play var and the cooldown var to prevent pause/play from being spammed
var pplay = false
var cooldown = false

#our time signature (max beats), current beat and the variable used to determine metronome speed
var timesig = 2
var beat = 0
var speedmulti = 0.50

#this one's just for the console at the moment and isn't actually calculating beats/minute
var BPM = 60

#Running/Stopped Label and Statistics

var times = 0
var state_on = true
const TEXT_ON = "Running"
const TEXT_OFF = "Stopped"

#Colour/Color Constants

const WHITE = "ffffff"
const BLACK = "000000"
const LGREY = "444444"

func _ready():
	print_times()

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_ENTER:
			if not cooldown:
				pplay = not pplay
				$Metronome.wait_time = speedmulti
				setlabel()
				print("Song toggled: " + pplay as String)
				if pplay:
					startsong()
		if event.scancode == KEY_LEFT:
			if not cooldown:
				if timesig > 1:
					timesig(false, "time signature bumped down to ")
		if event.scancode == KEY_RIGHT:
			if not cooldown:
				if timesig < 8:
					timesig(true, "time signature bumped up to ")
		if event.scancode == KEY_UP:
			if not cooldown:
				if speedmulti > 0.15:
					bpmchange(false, "tempo bumped up to ")
		if event.scancode == KEY_DOWN:
			if not cooldown:
				if speedmulti < 2:
					bpmchange(true, "tempo bumped down to ")

func _on_Metronome_timeout():
	$Metronome.wait_time = speedmulti
	if pplay:
		$Metronome.start()
		print ($Metronome.wait_time)
		beat+= 1
		if beat > timesig:
			beat = 1
		playnote()

func cooldown():
	cooldown = true
	$CoolTimer.start()

func _on_CoolTimer_timeout():
	cooldown = false
	print("-------")

func print_times():
	if state_on:	
		print("times: " + times as String)

func startsong():
	beat = 1
	$StartStop/LabelA.text = TEXT_ON
	#get the thing started manually
	playnote()
	$Metronome.wait_time = speedmulti
	$Metronome.start()

func timesig(var adding:bool, var time_text:String):
	cooldown()
	var t_change = 1 if adding else -1
	timesig += t_change
	helpercolors()
	print(time_text + timesig as String)

func bpmchange(var adding:bool, var speed_text:String):
	cooldown()
	var s_change = 0.05 if adding else -0.05
	speedmulti += s_change
	bpmupdate()
	print(speed_text + BPM as String)

func bpmupdate():
	BPM = 180-(speedmulti * 60)

func setlabel():
	cooldown()
	if pplay:
		$StartStop/LabelA.text = TEXT_ON
		times += 1
		$StartStop/LabelB.text = ("Started " + times as String + " times.")
	else:
		$StartStop/LabelA.text = TEXT_OFF

func playnote():
	if beat == 1:
		$Hi.play()
		helpercolors()
		$boxa.color = (WHITE as String)
		print("A!")
	if beat == 2:
		$Lo.play()
		helpercolors()
		$boxb.color = (WHITE as String)
		print("B!")
	if beat == 3:
		$Lo.play()
		helpercolors()
		$boxc.color = (WHITE as String)
		print("C!")
	if beat == 4:
		$Lo.play()
		helpercolors()
		$boxd.color = (WHITE as String)
		print("D!")
	if beat == 5:
		$Lo.play()
		helpercolors()
		$boxe.color = (WHITE as String)
		print("E!")
	if beat == 6:
		$Lo.play()
		helpercolors()
		$boxf.color = (WHITE as String)
		print("F!")
	if beat == 7:
		$Lo.play()
		helpercolors()
		$boxg.color = (WHITE as String)
		print("G!")
	if beat == 8:
		$Lo.play()
		helpercolors()
		$boxh.color = (WHITE as String)
		print("H!")
	if beat == 9:
		$Lo.play()
		helpercolors()
#		$boxi.color = (WHITE as String)
		print("I!")
	if beat == 10:
		$Lo.play()
		helpercolors()
#		$boxj.color = (WHITE as String)
		print("J!")
	if beat == 11:
		$Lo.play()
		helpercolors()
#		$boxk.color = (WHITE as String)
		print("K!")
	if beat == 12:
		$Lo.play()
		helpercolors()
#		$boxl.color = (WHITE as String)
		print("L!")
	if beat == 13:
		$Lo.play()
		helpercolors()
#		$boxm.color = (WHITE as String)
		print("M!")

func helpercolors():
	if timesig == 1:
		$boxa.color = (BLACK as String)
		$boxb.color = (BLACK as String)
		$boxc.color = (BLACK as String)
		$boxd.color = (BLACK as String)
		$boxe.color = (BLACK as String)
		$boxf.color = (BLACK as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 2:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (BLACK as String)
		$boxd.color = (BLACK as String)
		$boxe.color = (BLACK as String)
		$boxf.color = (BLACK as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 3:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (BLACK as String)
		$boxe.color = (BLACK as String)
		$boxf.color = (BLACK as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 4:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (LGREY as String)
		$boxe.color = (BLACK as String)
		$boxf.color = (BLACK as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 5:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (LGREY as String)
		$boxe.color = (LGREY as String)
		$boxf.color = (BLACK as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 6:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (LGREY as String)
		$boxe.color = (LGREY as String)
		$boxf.color = (LGREY as String)
		$boxg.color = (BLACK as String)
		$boxh.color = (BLACK as String)
	if timesig == 7:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (LGREY as String)
		$boxe.color = (LGREY as String)
		$boxf.color = (LGREY as String)
		$boxg.color = (LGREY as String)
		$boxh.color = (BLACK as String)
	if timesig == 8:
		$boxa.color = (LGREY as String)
		$boxb.color = (LGREY as String)
		$boxc.color = (LGREY as String)
		$boxd.color = (LGREY as String)
		$boxe.color = (LGREY as String)
		$boxf.color = (LGREY as String)
		$boxg.color = (LGREY as String)
		$boxh.color = (LGREY as String)
