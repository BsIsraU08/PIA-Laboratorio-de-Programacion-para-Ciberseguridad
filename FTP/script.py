# Script para la transferencia de FTP
#Objetivo: Conectarse a servidor ftp y hacer un upload de un archivo
# 21/10/2022 -v1 Jesus Israel Bolaños Uvalle

#Importando modulo ftp
from ftplib import FTP

#Estableciendo conexión a servidor
ftp= FTP('192.168.91.132')

#Iniciamos sesion
ftp.login('israel','2005587')

#Listamos el directorio
ftp.retrlines('LIST')

#Nos cambiamos al direcotrio upload
ftp.cwd('upload')

with open('ADVERTENCIA.txt', 'rb') as text_file:
    
    #Cargamos el archivo ADVERTENCIA.txt
    ftp.storlines('STOR ADVERTENCIA.txt', text_file)

#Salimos de la conexión
ftp.quit()
