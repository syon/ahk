# KeepAwake

Keep your screen awake, even if the screen saver timeout is working.

## usage / how it works

Open `KeepAwake.ahk` or `KeepAwake.exe`.

Send a signal to your cursor at the interval of 3 min.
To avoid infinite awake, it'll be stopped after 60 min and show a dialog.

- the countdown will be reset:
  - <kbd>Esc</kbd>
  - <kbd>Mouse right click</kbd>
  - <kbd>Win</kbd> (Left & Right)

## run on startup

Push <kbd>Windows + R</kbd> then type `shell:startup`.  
Place `.ahk` or `.exe` shortcuts there.
