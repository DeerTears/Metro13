# MBR-Godot-Metronome

My first original project in the Godot Engine. Coded with the help of @jmisacube.

# Current state of affairs:

I discovered that Godot 3.X has overall faster audio processing than Godot 2.X but Godot 2.X has a *variable* audio buffer. Godot 3.X doesn't have this functionality as of August 2019. I also broke future builds of the metronome beyond the one uploaded here, so I've decided I'll set this project down for a while.

A metronome is actually the worst thing I could've tried to make for Godot compared to most other engines. However I am still absolutely interested in building synthesizers, midi interpreters, rhythm games or other odd audio-related creations in Godot. I am taking this time to use GDScript for more game-y projects and also to learn C# so I can use Unity's far-faster audio processing. There are other Godot Metronome projects on Github that get it as perfect as possible, this one's still missing proper BPM (but I implemented it in a future build, it's just broken now and I have no idea where I went wrong) and the UI needs a theme. Enjoy it for what it is!

## INSTRUCTIONS:

(Currently keyboard only)

• Press enter to start/stop the metronome.

• Use the right and left arrow keys to increase/decrease the number of quarter notes in a measure.

• Use the up and down arrow keys to increase/decrease the speed of the metronome.

• Use ] and [ to increase/decrease the volume of the metronome.

## BUGS:

• The speed currently has no connection to beats per minute.

## Where this would've gone in the future:

• Option to choose which beats use the pre-loaded sounds. (Downbeat/Upbeat)
• Metronome speed accurate to beats per minute.
• Resizable window/GUI
• Full functionality for mobile/mouse users.
• A more coherent visual look

## Licensing:

This metronome uses TitilliumWeb SemiBold. Copyright (c) 2009-2011 by Accademia di Belle Arti di Urbino and students of MA course of Visual design. Some rights reserved. This Font Software is licensed under the SIL Open Font License, Version 1.1.

This metronome is planned to use Alexfonska's Godot FMOD Integration repository on GitHub: https://github.com/alexfonseka/godot-fmod-integration as well as FMOD Studio by Firelight Technologies Pty Ltd.

## Redistribution:

Copyright (c) 2019 Emberlynn Bland

You may not redistribute this application commerically. You may use this application in a commercial product or service, but not if the metronome is provided with the product/service. You may not distribute this application or its source code without attribution, or while claiming to be affiliated with Emberlynn Bland. You may make derivatives of this program so long as you share alike and notify me of your project.

I can be contacted at gdnghtgrl@gmail.com or on GitHub at http://github.com/deertears/
