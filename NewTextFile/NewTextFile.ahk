; Only run when Windows Explorer or Desktop is active
; Alt+T
#IfWinActive ahk_class CabinetWClass
!t::
#IfWinActive ahk_class ExploreWClass
!t::
#IfWinActive ahk_class Progman
!t::
#IfWinActive ahk_class WorkerW
!t::

    ; Get full path from open Explorer window
    WinGetText, FullPath, A

    ; Split up result (it returns paths seperated by newlines)
    StringSplit, PathArray, FullPath, `n

    ; Find line with backslash which is the path
    Loop, %PathArray0%
    {
        StringGetPos, pos, PathArray%a_index%, \
        if (pos > 0) {
            FullPath:= PathArray%a_index%
            break
        }
    }

    ; Clean up result
    FullPath := RegExReplace(FullPath, "(^.+?: )", "")
    StringReplace, FullPath, FullPath, `r, , all

    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for filename
    InputBox, UserInput, New Text File, , , 400, 100, , , , ,

    ; User pressed cancel
    If ErrorLevel
        Return

    ; If UserInput ends ".txt" then remove it for auto append
    UserInput := RegExReplace(UserInput, "(\.txt$)", "")

    ; Create file
    FileAppend, , %UserInput%.txt

    ; Open the file in the appropriate editor
    ;Run %UserInput%.txt

    Return

#IfWinActive
