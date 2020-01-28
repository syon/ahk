# KeepAwake

Keep your screen awake, even if the screen saver timeout is working.

## usage / how it works

Open `KeepAwake.ahk` or `KeepAwake.exe`.

Send a signal to your cursor at the interval of 3 min.
To avoid infinite awake, it'll be stopped after 60 min and show a dialog.

- __<kbd>Esc</kbd> or right click__: the countdown will be reset.
- <kbd>Ctrl + Alt + Shift + K</kbd>: Restart.
- <kbd>Ctrl + Alt + Shift + U</kbd>: Off (will be locked).

## run on startup

Push <kbd>Windows + R</kbd> then type `shell:startup`.  
Place `.ahk` or `.exe` shortcuts there.
