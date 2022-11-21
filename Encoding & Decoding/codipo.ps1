
#Jesus Israel Bolaños Uvalle
#2005587

clear-host
Write-Host "Bienvenido a un ejemplo de codificacion / decodificacion base64 usando powershell" -ForegroundColor Green
Write-Host "Codificando un archivo de texto"
#
# Se va a leer el contenido del archivo de texto
#
$inputfile = "C:\Users\HP\Desktop\secret.txt"
$fc = get-content $inputfile
$GB = [System.Text.Encoding]::UTF8.Getbytes($fc)
$etext = [System.Convert]::ToBase64String($GB)
Write-Host "El contenido del archivo CODIFICADO es:" $etext -ForegroundColor Green
#
# Decodificando contento de un archivo
#
Write-Host "DECODIFICANDO el texto previo:"
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($etext)) | Out-File -Encoding "ASCII" C:\Users\HP\Desktop\decode_secret.txt
$outfile12 = get-content C:\Users\HP\Desktop\decode_secret.txt
Write-Host "El texto decodificado es el siguiente:" -ForegroundColor Green
Write-Host "DECODIFICADO:" $outfile12