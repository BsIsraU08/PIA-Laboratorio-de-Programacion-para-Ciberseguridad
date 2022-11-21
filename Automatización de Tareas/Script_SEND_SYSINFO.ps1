#$P es igual a la particion donde se ubica la aplicacion de python
$P = (get-command powershell.exe).Path
#$A, con -Execute se especifica la aplicacion con la que se ejecutara el programa, -Argument es el programa de python que se va ejecutar, -workingDirectory es el directorio donde se encuentra el programa
$A = New-ScheduledTaskAction -Execute $P -Argument "SEND_SYSINFO.ps1" -workingDirectory "C:\Windows\System32"
#$T Se aplican desencadenadores, el cual se ejecutara diariamente con -Daily y sera a las 8:00 pm con -At, para desea agregar otra hora, puede ser por ejemplo: 9pm,4:30am
$T = New-ScheduledTaskTrigger -Daily -At "6:59pm"
Register-ScheduledTask SEND_SYSINFO -RunLevel Highest -Trigger $T -Action $A -TaskPath “MisTareas”