sudo timedatectl set-ntp true
sudo timedatectl set-ntp false
sudo ptpd -L -M -i eth0
sudo ptpd -L -u 192.168.33.7 -g -i eth0

