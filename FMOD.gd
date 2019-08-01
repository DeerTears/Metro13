extends Node

#func _ready():
	# initialize FMOD
	# initializing with the LIVE_UPDATE flag lets you
	# connect to Godot from the FMOD Studio editor
	# and author events in realtime (uncommend with other build)
	#Fmod.system_init(1024, Fmod.FMOD_STUDIO_INIT_LIVEUPDATE, Fmod.FMOD_INIT_NORMAL)

	# load banks
	# place your banks inside the project directory
	#Fmod.bank_load("./Banks/Desktop/Master Bank.bank", Fmod.FMOD_STUDIO_LOAD_BANK_NORMAL)
	#Fmod.bank_load("./Banks/Desktop/Master Bank.strings.bank", Fmod.FMOD_STUDIO_LOAD_BANK_NORMAL)

	# register a listener (uncomment with other build)
	#Fmod.system_add_listener($Listener)

	# play some events
	#Fmod.play_one_shot("event:/Footstep", $SoundSource1)
	#Fmod.play_one_shot("event:/Gunshot", $SoundSource2)

#func _process(delta):
	# update FMOD every tick
	# calling system_update also updates the listener 3D position
	# and 3D positions of any attached event instances (uncomment with other build)
#	Fmod.system_update()
