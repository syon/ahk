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
~LWin::
~RWin::
  cnt := 0
return
