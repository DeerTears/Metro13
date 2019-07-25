#Let's try using fmod for music-time-based-stuff
#https://github.com/alexfonseka/godot-fmod-integration/blob/master/.github/contributing.md#contribution-guidelines
#https://github.com/alexfonseka/godot-fmod-integration/blob/master/.github/contributing.md
#https://docs.godotengine.org/en/3.1/tutorials/audio/audio_streams.html

#Debug stuff
extends Control

func _ready():
    $OS_Label.text = "OS: " + OS.get_name()
    $Engine_Label.text = "Godot version: " + Engine.get_version_info()["string"]

func _process(delta):
    $FPS_Label.text = "FPS: " + str(Engine.get_frames_per_second())
    
#an fps couner with the label FPS_Label and godot ver into labels named OS_Label and Engine_Label respectively

#going to try running timings based on the delta instead of these timers outside of fmod integration
