;; Forked from https://stackoverflow.com/questions/40435980
#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#InstallKeybdHook
#SingleInstance force

;; Menu, Tray, Icon, shell32.dll, 319

SendMode Input

;; note: must use tidle prefix to fire hotkey once it is pressed
;; not until the hotkey is released
~F15::
    ;; must use downtemp to emulate hyper key, you cannot use down in this case
    ;; according to http://bit.ly/2fLyHHI, downtemp is as same as down except for ctrl/alt/shift/win keys
    ;; in those cases, downtemp tells subsequent sends that the key is not permanently down, and may be
    ;; released whenever a keystroke calls for it.
    ;; for example, Send {Ctrl Downtemp} followed later by Send {Left} would produce a normal {Left}
    ;; keystroke, not a Ctrl{Left} keystroke
;;  Send {Ctrl DownTemp}{Shift DownTemp}{Alt DownTemp}{LWin DownTemp}
    KeyWait, F15
;;  Send {Ctrl Up}{Shift Up}{Alt Up}{LWin Up}
;;  if (A_PriorKey = "F15") {
;;      Send {F13} ; IME OFF
;;  }
return

;; Navigation
~F15 & b:: Send {Blind}{Left}    ; capslock + B     : ◀
~F15 & f:: Send {Blind}{Right}   ; capslock + F     : ▶
~F15 & p:: Send {Blind}{Up}      ; capslock + P     : ▲
~F15 & n:: Send {Blind}{Down}    ; capslock + N     : ▼
~F15 & a:: Send {Blind}{Home}    ; capslock + A     : Home
~F15 & e:: Send {Blind}{End}     ; capslock + E     : End
~F15 & ,:: Send {Blind}^{Home}   ; capslock + ,     : Ctrl-Home
~F15 & .:: Send {Blind}^{End}    ; capslock + .     : Ctrl-End
~F15 & d:: Send {Del}            ; capslock + D     : Delete
~F15 & h:: Send {BS}             ; capslock + H     : Backspace
~F15 & m:: Send {Enter}          ; capslock + M     : Enter

;; Function
~F15 & q:: Send !{F4}            ; capslock + Q     : Alt-F4
~F15 & Enter:: Send {F2}         ; capslock + Enter : F2
~F15 & r:: Send {F5}             ; capslock + R     : F5

;; Hotkeys
~F15 & 9:: Send ^{PgUp}          ; capslock + 9     : Previous Tab
~F15 & 0:: Send ^{PgDn}          ; capslock + 0     : Next Tab
~F15 & [:: Send #^{Left}         ; capslock + [     : Left Desktop
~F15 & ]:: Send #^{Right}        ; capslock + ]     : Right Desktop
~F15 & s:: Send ^{s}             ; capslock + S     : Ctrl-S (Save)
~F15 & w:: Send ^{w}             ; capslock + W     : Ctrl-W (Close)
~F15 & l:: Send ^{l}             ; capslock + L     : Ctrl-L (Clear Console)
~F15 & t:: Send ^{t}             ; capslock + T     : Ctrl-T (New Tab)
~F15 & v::
  If GetKeyState("Shift")
    Send {PgUp}                  ; capslock + shift + V : Page Up
  Else
    Send {PgDn}                  ; capslock + V         : Page Down
  Return

;; Mouse
~F15 & Space:: Click             ; Click
