#Requires AutoHotkey v2.0

CapsLock::Ctrl

sc01A::Send "["       ; å sends [
sc01B::Send "]"      ; ^ sends }

+sc01A::SendText "{"    ; Shift + å sends {
+sc01B::SendText "}"    ; Shift + ^ sends }
