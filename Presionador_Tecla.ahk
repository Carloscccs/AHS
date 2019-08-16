#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F2::SAbajo()  ; <-- TECLAS
F3::SArriba()
F4::Recorrer()

SAbajo(){
	Loop, 10
		{
            Send s
            send, {down}
			sleep 60
		}
}

SArriba(){
	Loop, 10
		{
            Send s
            send, {up}
			sleep 60
		}
}

Recorrer(){
    num = 1
    max = 20 ; <-- Cantidad de datos (filas)[Validacion]
    loop, 4 { ; <-- Numero de columnas
        cont = 0
        loop, 20 { ; <-- Cantidad de datos (filas)
            cont++
            if (num = 1) {
                Send, {s}
                sleep 60
                if (max = cont) {
                    continue
                }
                
                send, {down}
                
            }
            if (num = 0) {
                Send, {s}
                sleep 60
                if (max = cont) {
                    continue
                }
                
                send, {up}
                    
            }
            
        }
        send, {Right}

        num = % ((num = 1) ? (0) : (1))
    }
}


^c::
Exitapp