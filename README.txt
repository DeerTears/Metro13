-=MBR-Godot-Metronome=-

My first original project in the Godot Engine. Coded with the help of @jmisacube.

// INSTRUCTIONS: //

(Currently keyboard only)
• Press enter to start/stop the metronome.

• Use the right and left arrow keys to increase/decrease the number of quarter notes in a measure.

• Use the up and down arrow keys to increase/decrease the speed of the metronome.

• Use ] and [ to increase/decrease the volume of the metronome.

// BUGS: //

• The sound played from the metronome is not accurate. It seems like a new sound stream is being created/destroyed when playing a new note. I'll try using FMOD for a consistent stream to fix this.

• The speed currently has no connection to beats per minute.

// PLANNED FEATURES //
--Next build:--

• FMOD Integration to fix out-of-sync sound clips.
• A display for beats per minute.

--Later builds:--

• Option to choose which beats use the pre-loaded sounds. (Downbeat/Upbeat)
• Metronome speed accurate to beats per minute.
• Resizable window/GUI
• Full functionality for mobile/mouse users.
• A more coherent visual look

// LISCENCING //

This metronome uses TitilliumWeb SemiBold. Copyright (c) 2009-2011 by Accademia di Belle Arti di Urbino and students of MA course of Visual design. Some rights reserved. This Font Software is licensed under the SIL Open Font License, Version 1.1.

This metronome is planned to use Alexfonska's Godot FMOD Integration repository on GitHub: https://github.com/alexfonseka/godot-fmod-integration as well as FMOD Studio by Firelight Technologies Pty Ltd.

// REDISTRIBUTION //

Copyright (c) 2019 Emberlynn Bland

You may not redistribute this application commerically. You may use this application in a commercial product or service, but not if the metronome is provided with the product/service. You may not distribute this application or its source code without attribution, or while claiming to be affiliated with Emberlynn Bland. You may make derivatives of this program so long as you share alike and notify me of your project.

I can be contacted at gdnghtgrl@gmail.com or on GitHub at http://github.com/deertears/
