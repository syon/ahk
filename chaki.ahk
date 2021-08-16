#Persistent
#NoEnv
#UseHook
#InstallKeybdHook
#SingleInstance force

;; Sakura Editor
F1::
  EnvGet, myhome, HOMEPATH
  Run, "C:\Program Files (x86)\sakura\sakura.exe", %myhome%\Desktop
  WinActivate, ahk_exe sakura.exe
return

;; Ctrl+Q
^Q::Send, !{F4}

;; Shift+Alt+セミコロン 日付入力
!+;::Send, %A_YYYY%%A_MM%%A_DD%

;; Shift+Alt+コロン 日付時刻入力
!+*::Send, %A_YYYY%%A_MM%%A_DD%-%A_Hour%%A_Min%_

;; Alt+Pause 環境変数ダイアログ
LAlt & Pause::Run % "rundll32 sysdm.cpl,EditEnvironmentVariables"
