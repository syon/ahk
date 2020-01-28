#Persistent

KeepMinutes := 60
IntervalMinutes := 3

SetTimer, OnAwake, % IntervalMinutes * 60 * 1000
return


OnAwake:
  cnt += 1
  if (cnt < (KeepMinutes / IntervalMinutes)) {
    MouseMove 0, 0, 0, R
  } else {
    MsgBox, 4, Keep Awake, Continue?
    IfMsgBox Yes
      cnt := 0
    else
      SetTimer, OnAwake, Off
  }
return


~Esc::
~RButton::
  cnt := 0
return


^+!K::
  SetTimer, OnAwake, On
  cnt := 0
  MsgBox, Keep Screen Mode
return


^+!U::
  SetTimer, OnAwake, Off
  MsgBox, Will be Screen Locked
return
