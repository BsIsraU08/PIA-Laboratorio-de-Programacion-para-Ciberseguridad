#!/bin/bash
#Jesus Israel Bolaños Uvalle
#2005587

echo -e "Opcion 1: Escaneo de red"
echo -e "Opcion 2: Escaneo individual"
echo -e "Opcion 3: Escaneo udp"
echo -e "Opcion 4: Escaneo de script"
echo -e "Opcion 5: Salir"
read -p "Seleccione una opcion: " seleccion

case $seleccion in
                1)
                        echo -e "Ingrese la subred:"
                        read subred
                        nmap -sn $subred -oN subred.txt;;
                2)

                        echo -e "Ingrese la IP a escanear"
                        read subred
                        nmap -v -A $subred -oN ipescaneada.txt;;
                3)

                        echo -e "Ingrese la IP a escanear con tipo UDP"
                        read subred
                        nmap -sU $subred -T5 -oN escaneoUdp.txt;;
                4)

                        echo -e "Ingrese el script a escanear"
                        read script
                        echo -e "Ingrese la IP"
                        read ip
                        nmap --script $script $ip -oN scriptescaneado.txt;;
                5)
                        exit
esac





