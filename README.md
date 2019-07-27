# MBR-Godot-Metronome

My first original project in the Godot Engine. Coded with the help of @jmisacube.

*EPILEPSY WARNING FOR THOSE WITH PHOTOSENSITIVITY!*

And with that out of the way...

// INSTRUCTIONS: //

(Currently keyboard only)
• Press enter to start/stop the metronome.

• Use the right and left arrow keys to increase/decrease the number of quarter notes in a measure.

• Use the up and down arrow keys to increase/decrease the speed of the metronome.

// KNOWN BUGS: //

• The sound played from the metronome is not accurate. It seems like a new sound stream is being created/destroyed when playing a new note. Using FMOD for a consistent stream should fix this.

• The 5th beat always plays the same sound as beat 1.

• The speed has no connection to beats per minute. The speed is also super finnicky and there are limited faster settings to choose from.

• The fastest speed makes the squares flash too quickly which is an issue for users with photosensitivity.

// PLANNED FEATURES //

--Next build:--

• FMOD Integration to fix out-of-sync sound clips.
• A display for beats per minute.
• Volume control.

--Later builds:--

• Option to choose which beats use the pre-loaded sounds. (Downbeat/Upbeat)
• Metronome speed accurate to beats per minute.
• Finer speed adjustments.
• Resizable window/GUI
• Full functionality for mobile/mouse users.
• A more coherent visual look

// LISCENCING //

This metronome uses TitilliumWeb SemiBold. Copyright (c) 2009-2011 by Accademia di Belle Arti di Urbino and students of MA course of Visual design. Some rights reserved. This Font Software is licensed under the SIL Open Font License, Version 1.1.

This metronome is planned to use:

Alexfonska's Godot FMOD Integration repository on GitHub: https://github.com/alexfonseka/godot-fmod-integration]

FMOD Studio by Firelight Technologies Pty Ltd.

// REDISTRIBUTION //

Copyright (c) 2019 Emberlynn Bland

Don't redistribute this application commerically by claiming it's your own or that you are affiliated with me. You may not redistribute this application or its source code without attribution.
